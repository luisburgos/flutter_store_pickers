import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShowcaseItemListTileLayout extends StatelessWidget {
  const ShowcaseItemListTileLayout({
    required this.icon,
    required this.name,
    required this.description,
    required this.onTap,
    super.key,
  });

  final Widget icon;
  final Widget name;
  final Widget description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          child: ShadCard(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: icon,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name,
                      //const SizedBox(height: 6),
                      description,
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
