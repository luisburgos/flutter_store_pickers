import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/stores/item/view.dart';
import 'package:go_router/go_router.dart';

class StorePickerPage extends StatelessWidget {
  const StorePickerPage({
    required this.storeId,
    required this.pickerId,
    super.key,
  });

  final String? storeId;
  final String? pickerId;

  @override
  Widget build(BuildContext context) {
    final store = globalStores[storeId];
    if (store == null) {
      return Scaffold(
        body: SafeArea(
          child: UnknownStorePickerView(
            message: 'Unknown store id: $storeId',
            onBackPressed: () => _onBackToHome(context),
          ),
        ),
      );
    }

    final picker = store.pickers[pickerId];
    if (picker == null) {
      return Scaffold(
        body: SafeArea(
          child: UnknownStorePickerView(
            message: 'Unknown picker id: $pickerId',
            onBackPressed: () => _onBackToHome(context),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: StorePickerView(
          picker: picker,
          onBackPressed: () => _onBackToHome(context),
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
