import 'package:flutter/material.dart';

class HideFocus extends StatelessWidget {
  final Widget child;

  const HideFocus({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
    );
  }
}
