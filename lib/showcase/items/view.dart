import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/items/layout.dart';
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
