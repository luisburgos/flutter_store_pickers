import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class StoresViewTitle extends StatelessWidget {
  const StoresViewTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class StoresViewDescription extends StatelessWidget {
  const StoresViewDescription(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        height: 1.2,
      ),
    );
  }
}

class ShowcaseGroupView extends StatelessWidget {
  const ShowcaseGroupView({
    required this.data,
    required this.onItemPressed,
    super.key,
  });

  final ShowcaseGroupData data;
  final void Function(String, String) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return StoreViewLayout(
      title: Text(data.title),
      pickers: data.items.values
          .map(
            (item) => ShowcaseItemView(
              data: item,
              onTap: () => onItemPressed(
                data.id,
                item.id,
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

class ShowcaseItemView extends StatelessWidget {
  const ShowcaseItemView({
    required this.data,
    required this.onTap,
    super.key,
  });

  final ShowcaseItemData data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return StorePickerViewLayout(
      onTap: onTap,
      icon: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.only(
          top: 0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Iconify(
            data.iconName,
            size: 22,
          ),
        ),
      ),
      name: Text(
        data.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      description: Text(
        data.description,
        style: const TextStyle(
          fontSize: 12,
          height: 1.2,
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
                  padding: const EdgeInsets.only(right: 12),
                  child: icon,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name,
                      //const SizedBox(height: 6),
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
