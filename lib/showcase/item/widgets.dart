import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShowcaseItemListTile extends StatelessWidget {
  const ShowcaseItemListTile({
    required this.data,
    required this.onTap,
    super.key,
  });

  final ShowcaseItemData data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ShowcaseItemListTileLayout(
      onTap: onTap,
      icon: Container(
        height: 56,
        width: 56,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: ShadTheme.of(context).colorScheme.primaryForeground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Iconify(
            data.iconName,
            size: 22,
            color: ShadTheme.of(context).colorScheme.primary,
          ),
        ),
      ),
      name: Text(
        data.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      description: Text(
        data.description,
        style: const TextStyle(
          fontSize: 12,
          height: 1.2,
        ),
      ),
    );
  }
}

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
            padding: const EdgeInsets.all(20),
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
