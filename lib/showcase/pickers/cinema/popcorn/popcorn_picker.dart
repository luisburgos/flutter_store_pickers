import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/engine/picker_engine.dart';
import 'package:flutter_store_pickers/showcase/pickers/cinema/popcorn/popcorn_picker_data.dart';
import 'package:flutter_store_pickers/showcase/pickers/icon_locator_helper.dart';
import 'package:hexcolor/hexcolor.dart';

/// @no-doc
class PopcornPickerWidget extends StatefulWidget {
  /// @no-doc
  const PopcornPickerWidget({
    required this.hexColor,
    this.initialSelectionLimit = 2,
    this.id = 'popcorn-01',
    super.key,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String hexColor;

  /// @no-doc
  final int initialSelectionLimit;

  @override
  State<PopcornPickerWidget> createState() => _PopcornPickerWidgetState();
}

class _PopcornPickerWidgetState extends State<PopcornPickerWidget> {
  late int selectionLimit;
  late Map<String, List<PickerEngineItem>> _selected;

  String get sizeSectionId => '${widget.id}-size';
  String get flavorSectionId => '${widget.id}-flavor';

  @override
  void initState() {
    _selected = {
      flavorSectionId: [],
      sizeSectionId: [
        popcornSizes[popcornSizeSmallId]!,
      ],
    };
    selectionLimit = widget.initialSelectionLimit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedSize = _selected[sizeSectionId]?.first.id.value ?? '';

    return PickerEngineWidget(
      key: Key(widget.id),
      color: HexColor(widget.hexColor),
      iconDataLocator: faIconNameMapping,
      onStateChanged: (state) {},
      sections: [
        PickerEngineSection(
          id: sizeSectionId,
          title: 'Elige un tamaño',
          options: popcornSizes.values.toList(),
          onSelectedChanged: (selected) {
            setState(() {
              _selected[sizeSectionId] = selected;

              final isFamily = selected.contains(
                popcornSizes[popcornSizeFamilyId],
              );
              selectionLimit = isFamily ? 4 : widget.initialSelectionLimit;
            });
          },
        ),
        if (_selected[sizeSectionId]?.isNotEmpty ?? false)
          PickerEngineSection(
            id: '$flavorSectionId-$selectedSize',
            title: 'Elige hasta $selectionLimit sabores',
            options: _getPopcornFlavorsWithPrices(
              _selected[sizeSectionId]?.first,
            ),
            withPreview: selectionLimit > 1,
            selectionConfig: PickerEngineSelectionConfig(selectionLimit),
            onSelectedChanged: (selected) {
              print('selected: $selected');

              setState(() {
                /// Filter just the most expensive item during selection
                final mostExpensiveItem = selected.reduce(
                  (a, b) => (a.price ?? 0.0) > (b.price ?? 0.0) ? a : b,
                );
                _selected[flavorSectionId] = [mostExpensiveItem];
              });
            },
          ),
      ],
    );
  }

  List<PickerEngineItem> _getPopcornFlavorsWithPrices(
    PickerEngineItem? sizeSelected,
  ) {
    if (sizeSelected == null) return [];

    final prices = flavorPricesForSize[sizeSelected.id];

    return globalPopcornFlavors
        .map(
          (flavor) => flavor.copyWith(
            price: prices?[flavor.id] ?? 0.0,
          ),
        )
        .toList();
  }
}
