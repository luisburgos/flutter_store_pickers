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
    return StoreViewLayout(
      title: Text(store.name),
      pickers: store.pickers.values
          .map(
            (picker) => StorePickerView(
              picker: picker,
              onTap: () => onItemPressed(
                store.id,
                picker.id,
              ),
            ),
          )
          .toList(),
    );
  }
}

class StoreViewLayout extends StatelessWidget {
  const StoreViewLayout({
    required this.title,
    required this.pickers,
    super.key,
  });

  final Widget title;
  final List<Widget> pickers;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ShadCard(
        border: ShadBorder.none,
        shadows: const [],
        padding: EdgeInsets.zero,
        title: title,
        //description: Text(store.description),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: pickers,
          ),
        ),
      ),
    );
  }
}

class StorePickerView extends StatelessWidget {
  const StorePickerView({
    required this.picker,
    required this.onTap,
    super.key,
  });

  final StorePicker picker;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return StorePickerViewLayout(
      onTap: onTap,
      icon: Padding(
        padding: const EdgeInsets.only(
          top: 4,
        ),
        child: Iconify(
          picker.iconName,
          size: 18,
        ),
      ),
      name: Text(
        picker.name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      description: Text(
        picker.description,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}

class StorePickerViewLayout extends StatelessWidget {
  const StorePickerViewLayout({
    required this.icon,
    required this.name,
    required this.description,
    required this.onTap,
    super.key,
  });

  final Widget icon;
  final Widget name;
  final Widget description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          child: ShadCard(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: icon,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name,
                      const SizedBox(height: 6),
                      description,
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
