import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/item/view.dart';
import 'package:flutter_store_pickers/showcase/state.dart';
import 'package:go_router/go_router.dart';

class ShowcaseItemPage extends StatelessWidget {
  const ShowcaseItemPage({
    required this.groupId,
    required this.itemId,
    super.key,
  });

  final String? groupId;
  final String? itemId;

  @override
  Widget build(BuildContext context) {
    final data = ShowcaseState.of(context).data;
    final group = data.groups[groupId];
    if (group == null) {
      return Scaffold(
        body: SafeArea(
          child: UnknownShowcaseItemView(
            message: 'Unknown store id: $groupId',
            onBackPressed: () => _onBackToHome(context),
          ),
        ),
      );
    }

    final item = group.items[itemId];
    if (item == null) {
      return Scaffold(
        body: SafeArea(
          child: UnknownShowcaseItemView(
            message: 'Unknown picker id: $itemId',
            onBackPressed: () => _onBackToHome(context),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ShowcaseItemView(
          group: group,
          item: item,
          onBackPressed: () => _onBackToHome(context),
        ),
      ),
    );
  }

  void _onBackToHome(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.navigateToRoot();
    }
  }
}
