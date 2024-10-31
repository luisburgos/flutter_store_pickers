import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:flutter_store_pickers/showcase/stores/item/layout.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class StorePickerView extends StatelessWidget {
  const StorePickerView({
    required this.store,
    required this.picker,
    required this.onBackPressed,
    super.key,
  });

  final Store store;
  final StorePicker picker;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return StorePickerViewLayout(
      onBackPressed: onBackPressed,
      headerExtra: Text(
        picker.name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: picker.builder.call(store),
    );
  }
}

class UnknownStorePickerView extends StatelessWidget {
  const UnknownStorePickerView({
    required this.message,
    required this.onBackPressed,
    super.key,
  });

  final String message;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return StorePickerViewLayout(
      onBackPressed: onBackPressed,
      body: Center(
        child: Column(
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 20),
            ),
            ShadButton(
              onPressed: onBackPressed,
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
