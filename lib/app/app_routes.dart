import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/stores/item/page.dart';
import 'package:flutter_store_pickers/showcase/stores/page.dart';
import 'package:go_router/go_router.dart';

const storeIdKey = 'sid';
const storePickerIdKey = 'pid';

class AppRoutes {
  static const root = '/';
  static const storePicker = '/:$storeIdKey/picker/:$storePickerIdKey';
}

final defaultAppRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.root,
      builder: (_, __) => const StoresPage(),
    ),
    GoRoute(
      path: AppRoutes.storePicker,
      builder: (_, routerState) {
        final storeId = routerState.pathParameters[storeIdKey];
        final pickerId = routerState.pathParameters[storePickerIdKey];
        return StorePickerPage(
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
      AppRoutes.storePicker
          .replaceAll(':$storeIdKey', storeId)
          .replaceAll(':$storePickerIdKey', pickerId),
    );
  }
}
