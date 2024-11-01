import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/groups/layout.dart';
import 'package:flutter_store_pickers/showcase/items/view.dart';
import 'package:flutter_store_pickers/showcase/models.dart';

class ShowcaseGroupView extends StatelessWidget {
  const ShowcaseGroupView({
    required this.data,
    required this.onItemPressed,
    super.key,
  });

  final ShowcaseGroupData data;
  final void Function(String, String) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return ShowcaseGroupViewLayout(
      title: Text(data.title),
      children: data.items.values
          .map(
            (item) => ShowcaseItemListTile(
              data: item,
              onTap: () => onItemPressed(
                data.id,
                item.id,
              ),
            ),
          )
          .toList(),
    );
  }
}
