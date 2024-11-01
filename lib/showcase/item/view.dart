import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/item/layout.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShowcaseItemView extends StatelessWidget {
  const ShowcaseItemView({
    required this.group,
    required this.item,
    required this.onBackPressed,
    super.key,
  });

  final ShowcaseGroupData group;
  final ShowcaseItemData item;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return ShowcaseItemViewLayout(
      onBackPressed: onBackPressed,
      headerExtra: Text(
        item.title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: item.viewBuilder.call(group),
    );
  }
}

class UnknownShowcaseItemView extends StatelessWidget {
  const UnknownShowcaseItemView({
    required this.message,
    required this.onBackPressed,
    super.key,
  });

  final String message;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return ShowcaseItemViewLayout(
      onBackPressed: onBackPressed,
      body: Center(
        child: Column(
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 20),
            ),
            ShadButton(
              onPressed: onBackPressed,
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
