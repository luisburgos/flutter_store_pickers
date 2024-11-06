import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/engine/models/models.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// @no-doc
class PickerEngineItemView extends StatelessWidget {
  /// @no-doc
  const PickerEngineItemView({
    required this.item,
    required this.onOptionTap,
    required this.isSelected,
    required this.selectedColor,
    required this.iconDataLocator,
    super.key,
  });

  /// @no-doc
  final PickerEngineItem item;

  /// @no-doc
  final bool isSelected;

  /// @no-doc
  final void Function(PickerEngineItem) onOptionTap;

  /// @no-doc
  final Color selectedColor;

  /// @no-doc
  final IconDataLocator iconDataLocator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onOptionTap(item),
      child: ShadCard(
        width: double.infinity,
        shadows: const [],
        padding: const EdgeInsets.all(10),
        border: Border.all(
          width: 1.8,
          color: isSelected
              ? selectedColor
              : ShadTheme.of(context).colorScheme.border,
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 60,
            minWidth: double.infinity,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (item.iconName != null)
                Icon(
                  iconDataLocator(item.iconName!),
                  size: 16,
                ),
              Text(
                item.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              if ((item.price ?? 0) > 0)
                Text(
                  '\$${item.price}',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
