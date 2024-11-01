import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/shared/shadcn_ui_components.dart';

class ShowcaseItemViewLayout extends StatelessWidget {
  const ShowcaseItemViewLayout({
    required this.body,
    required this.onBackPressed,
    this.headerExtra,
    super.key,
  });

  final Widget body;
  final Widget? headerExtra;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ShadBackIconButton(
              onPressed: onBackPressed,
            ),
            if (headerExtra != null) headerExtra!,
            const Spacer(),
          ],
        ),
        Expanded(child: body),
      ],
    );
  }
}
