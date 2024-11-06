import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_store_pickers/engine/models/models.dart';
import 'package:flutter_store_pickers/engine/view/picker_engine_section_preview_item.dart';
import 'package:flutter_store_pickers/shared/layout_grid_utils.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

const _minHeight = 40.0;

/// @no-doc
class PickerEngineSectionPreview extends StatelessWidget {
  /// @no-doc
  const PickerEngineSectionPreview({
    required this.items,
    required this.onRemoveTap,
    required this.iconDataLocator,
    super.key,
  });

  /// @no-doc
  final List<PickerEngineItem> items;

  /// @no-doc
  final IconDataLocator iconDataLocator;

  /// @no-doc
  final void Function(PickerEngineItem) onRemoveTap;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      final theme = ShadTheme.of(context);

      return ShadCard(
        padding: EdgeInsets.zero,
        shadows: const [],
        backgroundColor: theme.colorScheme.primaryForeground,
        child: const SizedBox(
          width: double.infinity,
          height: _minHeight,
        ),
      );
    }

    final calculations = SimpleLayoutGridCalculations(
      crossAxisCount: items.length,
      itemCount: items.length,
    );
    final (columnSizes, rowSizes) = calculations.sizes;
    final (rowGap, columGap) = calculations.gaps;

    return LayoutGrid(
      columnSizes: columnSizes,
      rowSizes: rowSizes,
      columnGap: columGap,
      rowGap: rowGap,
      children: [
        for (var i = 0; i < items.length; i++)
          PickerSelectionPreviewItem(
            key: Key('preview-item-${items[i]}'),
            item: items[i],
            onRemoveTap: onRemoveTap,
            displayRemoveButton: items.length > 1,
            iconDataLocator: iconDataLocator,
          ),
      ],
    );
  }
}
