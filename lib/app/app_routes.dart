import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/item/showcase_item_page.dart';
import 'package:flutter_store_pickers/showcase/showcase_page.dart';
import 'package:go_router/go_router.dart';

const showcaseItemIdKey = 'id';
const showcaseItemPickerIdKey = 'pickerId';

class AppRoutes {
  static const root = '/';
  static const showcaseItem = '/:$showcaseItemIdKey';
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
        final storeId = routerState.pathParameters[showcaseItemIdKey];
        final extra = routerState.extra as Map?;
        final pickerId = extra?[showcaseItemPickerIdKey] as String?;
        return ShowcasePickerPage(
          storeId: storeId,
          pickerId: pickerId,
        );
      },
    ),
  ],
);

extension BuildContextNavigationMethods<T> on BuildContext {
  void navigateToHome() {
    go(AppRoutes.root);
  }

  void navigateToDetails(String storeId, String pickerId) {
    go(
      AppRoutes.showcaseItem.replaceAll(':$showcaseItemIdKey', storeId),
      extra: {
        showcaseItemPickerIdKey: pickerId,
      },
    );
  }
}
