import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    this.isLoading = false,
    this.onPressed,
    this.textButton = 'Submit',
    this.child,
  }) : super(key: key);

  /// the text to be displayed on the button. if child is not null, this wil be ignored
  final String? textButton;

  /// the widget to be displayed on the button.
  final Widget? child;

  /// Weather to show child or loading indicator, if [false] child will be shown
  final bool isLoading;

  /// The callback to be called when the button is pressed and [isLoading] is false
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16)),
      child: isLoading
          ? SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.onPrimary),
                // backgroundColor: Theme.of(context).disabledColor,
              ),
            )
          : child ?? Text(textButton!),
    );
  }
}
