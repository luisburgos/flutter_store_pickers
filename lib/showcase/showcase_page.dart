import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/showcase_item.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ShowcaseStoresView(
          stores: globalStores.values.toList(),
        ),
      ),
    );
  }
}

class ShowcaseStoresView extends StatelessWidget {
  const ShowcaseStoresView({
    required this.stores,
    super.key,
  });

  final List<ShowcaseStore> stores;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...stores.map(
            (store) => ShowcaseStoreView(
              store: store,
              onItemPressed: context.navigateToDetails,
            ),
          )
        ],
      ),
    );
  }
}

class ShowcaseStoreView extends StatelessWidget {
  const ShowcaseStoreView({
    required this.store,
    required this.onItemPressed,
    super.key,
  });

  final ShowcaseStore store;
  final void Function(String, String) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(store.name),
          ...store.pickers.values.map(
            (option) => ListTile(
              title: Text(option.name),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () => onItemPressed(store.id, option.id),
              ),
            ),
          )
        ],
      ),
    );
  }
}
