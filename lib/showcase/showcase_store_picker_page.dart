import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/shared/shadcn_ui_components.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/showcase_models.dart';
import 'package:go_router/go_router.dart';

class ShowcaseStorePickerPage extends StatelessWidget {
  const ShowcaseStorePickerPage({
    required this.storeId,
    required this.pickerId,
    super.key,
  });

  final String? storeId;
  final String? pickerId;

  @override
  Widget build(BuildContext context) {
    final picker = globalStores[storeId]?.pickers[pickerId];

    return Scaffold(
      body: SafeArea(
        child: ShowcaseStorePickerView(
          picker: picker,
        ),
      ),
    );
  }
}

class ShowcaseStorePickerView extends StatelessWidget {
  const ShowcaseStorePickerView({
    required this.picker,
    super.key,
  });

  final ShowcaseStorePicker? picker;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ShadBackIconButton(
              onPressed: () => _onBackToHome(context),
            ),
            const Spacer(),
          ],
        ),
        if (picker != null) ...[
          Expanded(
            child: picker!.builder.call(),
          ),
          //const SizedBox(height: 12),
        ],
      ],
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
