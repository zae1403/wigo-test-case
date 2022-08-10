import 'package:flutter/material.dart';
import '../resources/colors.dart';

const Duration kSnackBarDuration = Duration(milliseconds: 1500);

class FailureSnackBar extends SnackBar {
  final String message;
  FailureSnackBar({Key? key, required this.message})
      : super(
          key: key,
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          backgroundColor: ColorPalette.alertColor,
          duration: kSnackBarDuration,
          behavior: SnackBarBehavior.floating,
        );
}
