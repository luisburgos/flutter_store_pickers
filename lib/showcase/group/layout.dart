import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShowcaseGroupViewLayout extends StatelessWidget {
  const ShowcaseGroupViewLayout({
    required this.title,
    required this.children,
    super.key,
  });

  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ShadCard(
        border: ShadBorder.none,
        shadows: const [],
        padding: EdgeInsets.zero,
        title: title,
        //description: Text(store.description),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
