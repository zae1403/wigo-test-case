import 'package:flutter/material.dart';

class InfoLabel extends StatelessWidget {
  const InfoLabel({
    Key? key,
    required this.label,
    this.labelStyle,
    required this.child,
  }) : super(key: key);
  final String label;
  final TextStyle? labelStyle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle ??
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}
