import 'package:flutter/material.dart';

class ShowcaseViewLayout extends StatelessWidget {
  const ShowcaseViewLayout({
    required this.title,
    required this.description,
    required this.stores,
    super.key,
  });

  final Widget title;
  final Widget description;
  final List<Widget> stores;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
            description,
            const SizedBox(height: 24),
            ...stores,
          ],
        ),
      ),
    );
  }
}
