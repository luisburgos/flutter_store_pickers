import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/items/item/page.dart';
import 'package:flutter_store_pickers/showcase/page.dart';
import 'package:go_router/go_router.dart';

const groupIdKey = 'gid';
const itemIdKey = 'iid';

class AppRoutes {
  static const root = '/';
  static const showcaseItem = '/:$groupIdKey/item/:$itemIdKey';
}

final defaultAppRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.root,
      builder: (_, __) => const ShowcasePage(),
    ),
    GoRoute(
      path: AppRoutes.showcaseItem,
      builder: (_, routerState) {
        final groupId = routerState.pathParameters[groupIdKey];
        final itemId = routerState.pathParameters[itemIdKey];
        return ShowcaseItemPage(
          groupId: groupId,
          itemId: itemId,
        );
      },
    ),
  ],
);

extension BuildContextNavigationMethods<T> on BuildContext {
  void navigateToRoot() {
    go(AppRoutes.root);
  }

  void navigateToShowcaseItem(String groupId, String itemId) {
    go(
      AppRoutes.showcaseItem
          .replaceAll(':$groupIdKey', groupId)
          .replaceAll(':$itemIdKey', itemId),
    );
  }
}
