import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    required this.itemId,
    super.key,
  });

  final String? itemId;

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(
        child: ElevatedButton(
          onPressed: () => _onBackToHome(context),
          child: const Text('Back to Home'),
        ),
      ),
    );
  }

  void _onBackToHome(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.navigateToHome();
    }
  }
}
