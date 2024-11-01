import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/engine/picker_engine.dart';
import 'package:flutter_store_pickers/showcase/item/icon_locator_helper.dart';
import 'package:flutter_store_pickers/showcase/stores/clothing/tshirts/tshirt_picker_data.dart';
import 'package:hexcolor/hexcolor.dart';

/// @no-doc
class TShirtPickerWidget extends StatefulWidget {
  /// @no-doc
  const TShirtPickerWidget({
    required this.hexColor,
    this.id = 'tshirt-01',
    super.key,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String hexColor;

  @override
  State<TShirtPickerWidget> createState() => _TShirtPickerWidgetState();
}

class _TShirtPickerWidgetState extends State<TShirtPickerWidget> {
  /// @no-doc
  String get colorSectionId => '${widget.id}-color';

  /// @no-doc
  String get sizeSectionId => '${widget.id}-size';

  List<PickerEngineItem> sizeItems = [];

  @override
  Widget build(BuildContext context) {
    return PickerEngineWidget(
      key: Key(widget.id),
      color: HexColor(widget.hexColor),
      iconDataLocator: faIconNameMapping,
      onStateChanged: (state) {
        if (state.selections.isEmpty) return;

        final isWhite =
            state.selections[colorSectionId]?.contains(tShirtWhiteColor) ??
                false;
        setState(() {
          sizeItems = [tShirtSizeS, tShirtSizeG];
          if (isWhite) {
            sizeItems = [
              tShirtSizeS,
              tShirtSizeM,
              tShirtSizeG,
            ];
          }
        });
      },
      sections: [
        PickerEngineSection(
          id: colorSectionId,
          title: 'Elige un color',
          options: const [
            tShirtBlueColor,
            tShirtWhiteColor,
          ],
        ),
        if (sizeItems.isNotEmpty)
          PickerEngineSection(
            id: sizeSectionId,
            title: 'Elige un tamaño',
            options: sizeItems,
          ),
      ],
    );
  }
}
