import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/engine/picker_engine.dart';
import 'package:flutter_store_pickers/showcase/pickers/cinema/soda/soda_picker_data.dart';
import 'package:flutter_store_pickers/showcase/pickers/icon_locator_helper.dart';
import 'package:hexcolor/hexcolor.dart';

/// @no-doc
class SodaPickerWidget extends StatefulWidget {
  /// @no-doc
  const SodaPickerWidget({
    required this.hexColor,
    this.id = 'soda-01',
    super.key,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String hexColor;

  @override
  State<SodaPickerWidget> createState() => _SodaPickerWidgetState();
}

class _SodaPickerWidgetState extends State<SodaPickerWidget> {
  late Map<String, List<PickerEngineItem>> _selected;

  String get sizeSectionId => '${widget.id}-size';
  String get flavorSectionId => '${widget.id}-flavor';
  String get iceSectionId => '${widget.id}-ice';

  @override
  void initState() {
    _selected = {
      sizeSectionId: [],
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PickerEngineWidget(
      key: Key(widget.id),
      color: HexColor(widget.hexColor),
      iconDataLocator: faIconNameMapping,
      onStateChanged: (state) {},
      sections: [
        PickerEngineSection(
          id: sizeSectionId,
          title: 'Elige un tamaño',
          options: sodaSizes.values.toList(),
          onSelectedChanged: (selected) {
            setState(() {
              _selected[sizeSectionId] = selected;
            });
          },
        ),
        PickerEngineSection(
          id: flavorSectionId,
          title: 'Elige un sabor',
          options: [
            sodaFlavor1,
            sodaFlavor2,
            sodaFlavor3,
            sodaFlavor4,
          ],
        ),
        PickerEngineSection(
          id: iceSectionId,
          title: 'Elige cantidad de hielo',
          options: [
            itemIce1,
            itemIce2,
            itemIce3,
          ],
        ),
      ],
    );
  }
}
