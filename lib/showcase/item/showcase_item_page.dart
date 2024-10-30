import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:go_router/go_router.dart';

class ShowcasePickerPage extends StatelessWidget {
  const ShowcasePickerPage({
    required this.storeId,
    required this.pickerId,
    super.key,
  });

  final String? storeId;
  final String? pickerId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (storeId != null && pickerId != null) ...[
                globalStores[storeId]?.pickers[pickerId]?.builder.call() ??
                    const SizedBox.shrink(),
                const SizedBox(height: 12),
              ],
              ElevatedButton(
                onPressed: () => _onBackToHome(context),
                child: const Text('Back to Home'),
              ),
            ],
          ),
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
