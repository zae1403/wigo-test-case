// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);
  final Widget title;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle.merge(
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          child: title,
        ),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: theme.colorScheme.onSurface,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              child: subtitle!,
            ),
          ),
      ],
    );
  }
}
