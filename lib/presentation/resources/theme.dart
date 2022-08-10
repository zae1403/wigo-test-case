import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static bool isDarkMode(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
  }

  static bool isLightMode(BuildContext context) => !isDarkMode(context);

  static ThemeData get darkTheme {
    final ThemeData base = ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark(
        primary: ColorPalette.primaryColor,
        onPrimary: ColorPalette.primaryTextColor,
        secondary: ColorPalette.secondaryColor,
        onSecondary: ColorPalette.primaryTextColor,
        background: ColorPalette.backgroundBlack,
        onBackground: ColorPalette.primaryTextColor,
        error: ColorPalette.alertColor,
        onError: ColorPalette.primaryTextColor,
        surface: ColorPalette.backgroundBlackVariant,
        onSurface: ColorPalette.secondaryTextColor,
      ),
      primaryColor: ColorPalette.primaryColor,
      scaffoldBackgroundColor: ColorPalette.backgroundBlack,
      dividerColor: ColorPalette.backgroundBlackVariant,
      unselectedWidgetColor: ColorPalette.disabledColor,
      toggleableActiveColor: ColorPalette.secondaryColor,
      shadowColor: ColorPalette.backgroundBlackVariant,
    );
    return _buildThemeData(base);
  }

  static ThemeData _buildThemeData(ThemeData base) {
    return ThemeData(
      brightness: base.brightness,
      colorScheme: base.colorScheme,
      textTheme: _buildTextTheme(base),
      appBarTheme: _buildAppBarTheme(base),
      iconTheme: _buildIconThemeData(base),
      inputDecorationTheme: _buildInputDecorationTheme(base),
      outlinedButtonTheme: _buildOutlinedButtonThemeData(base),
      elevatedButtonTheme: _buildElevatedButtonThemeData(base),
      checkboxTheme: _buildCheckboxTheme(base),
      primaryColor: base.primaryColor,
      scaffoldBackgroundColor: base.scaffoldBackgroundColor,
      dividerColor: base.dividerColor,
      unselectedWidgetColor: base.unselectedWidgetColor,
      toggleableActiveColor: base.toggleableActiveColor,
      shadowColor: base.shadowColor,
    );
  }

  static CheckboxThemeData _buildCheckboxTheme(ThemeData base) {
    return CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(base.colorScheme.surface),
      checkColor: MaterialStateProperty.all<Color>(base.colorScheme.secondary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: base.disabledColor),
    );
  }

  static AppBarTheme _buildAppBarTheme(ThemeData theme) {
    return AppBarTheme(
      color: theme.colorScheme.background,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: theme.primaryColor,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: theme.iconTheme.copyWith(
        color: theme.colorScheme.onBackground,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme(ThemeData theme) =>
      InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: theme.colorScheme.onSurface,
        ),
        iconColor: theme.colorScheme.primary,
        filled: true,
        fillColor: theme.colorScheme.surface,
        contentPadding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
        errorStyle: TextStyle(
          color: theme.colorScheme.error,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      );

  static OutlinedButtonThemeData _buildOutlinedButtonThemeData(
          ThemeData theme) =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: theme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      );

  static ElevatedButtonThemeData _buildElevatedButtonThemeData(
          ThemeData theme) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.all(12),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ).copyWith(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return theme.colorScheme.primary.withOpacity(0.5);
                } else if (states.contains(MaterialState.disabled)) {
                  return theme.disabledColor;
                }
                return null; // Use the component's default./ Use the component's default.
              },
            ),
            foregroundColor:
                MaterialStateProperty.all(theme.colorScheme.onPrimary)),
      );

  static IconThemeData _buildIconThemeData(ThemeData theme) =>
      theme.iconTheme.copyWith(
        color: theme.primaryColor,
      );

  static TextTheme _buildTextTheme(ThemeData base) {
    return GoogleFonts.poppinsTextTheme().apply(
      displayColor: base.colorScheme.onPrimary,
      bodyColor: base.colorScheme.onSurface,
    );
  }
}
