import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/pages/details_page.dart';
import 'package:flutter_store_pickers/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const root = '/';
  static const details = '/:id';
}

final defaultAppRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.root,
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.details,
      builder: (_, routerState) {
        final itemId = routerState.pathParameters['id'];
        return DetailsPage(itemId: itemId);
      },
    ),
  ],
);

extension BuildContextNavigationMethods<T> on BuildContext {
  void navigateToHome() {
    go(AppRoutes.root);
  }

  void navigateToDetails(String itemId) {
    go(
      AppRoutes.details.replaceAll(':id', itemId),
    );
  }
}
