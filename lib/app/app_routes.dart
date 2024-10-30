import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/showcase_store_picker_page.dart';
import 'package:flutter_store_pickers/showcase/showcase_stores_page.dart';
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
        final queryParams = routerState.uri.queryParameters;
        final pickerId = queryParams[showcaseItemPickerIdKey];
        return ShowcaseStorePickerPage(
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
      '${AppRoutes.showcaseItem.replaceAll(':$showcaseItemIdKey', storeId)}'
      '?'
      '$showcaseItemPickerIdKey=$pickerId',
    );
  }
}
