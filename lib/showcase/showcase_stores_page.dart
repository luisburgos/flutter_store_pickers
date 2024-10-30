import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/showcase_models.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Store Pickers',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            ...stores.map(
              (store) => ShowcaseStoreView(
                store: store,
                onItemPressed: context.navigateToDetails,
              ),
            ),
          ],
        ),
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
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ShadCard(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
          bottom: 12,
        ),
        title: Text(store.name),
        //description: Text(store.description),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...store.pickers.values.map(
                (option) => Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                      ),
                      child: Iconify(
                        option.iconName,
                        size: 18,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          option.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                      ],
                    ),
                    subtitle: Text(
                      option.description,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      ),
                      onPressed: () => onItemPressed(
                        store.id,
                        option.id,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
