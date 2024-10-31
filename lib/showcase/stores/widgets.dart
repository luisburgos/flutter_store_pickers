import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class StoresViewTitle extends StatelessWidget {
  const StoresViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Store Pickers',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class StoresViewDescription extends StatelessWidget {
  const StoresViewDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class StoreView extends StatelessWidget {
  const StoreView({
    required this.store,
    required this.onItemPressed,
    super.key,
  });

  final Store store;
  final void Function(String, String) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ShadCard(
        border: ShadBorder.none,
        shadows: const [],
        padding: EdgeInsets.zero,
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
                (picker) => Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: ShadCard(
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      titleAlignment: ListTileTitleAlignment.top,
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                        ),
                        child: Iconify(
                          picker.iconName,
                          size: 18,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            picker.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 6),
                        ],
                      ),
                      subtitle: Text(
                        picker.description,
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
                          picker.id,
                        ),
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
