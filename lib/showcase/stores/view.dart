import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:flutter_store_pickers/showcase/stores/layout.dart';
import 'package:flutter_store_pickers/showcase/stores/widgets.dart';

class StoresView extends StatelessWidget {
  const StoresView({
    required this.stores,
    super.key,
  });

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return StoresViewLayout(
      title: const StoresViewTitle(),
      description: const StoresViewDescription(),
      stores: stores
          .map(
            (store) => StoreView(
              store: store,
              onItemPressed: context.navigateToDetails,
            ),
          )
          .toList(),
    );
  }
}
