import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/engine/picker_engine.dart';
import 'package:flutter_store_pickers/showcase/pickers/clothing/jeans/jeans_picker_data.dart';
import 'package:flutter_store_pickers/showcase/pickers/icon_locator_helper.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// @no-doc
class JeansPickerWidget extends StatefulWidget {
  /// @no-doc
  const JeansPickerWidget({
    this.id = 'jeans-01',
    super.key,
  });

  /// @no-doc
  final String id;

  @override
  State<JeansPickerWidget> createState() => _JeansPickerWidgetState();
}

class _JeansPickerWidgetState extends State<JeansPickerWidget> {
  late Map<String, List<PickerEngineItem>> _selected;

  String get waistSectionId => '${widget.id}-waist';
  String get legSectionId => '${widget.id}-leg';

  @override
  void initState() {
    _selected = {
      waistSectionId: [],
      legSectionId: [],
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final is28 = _selected[waistSectionId]?.contains(jeanWaistSize28) ?? false;
    final is31 = _selected[waistSectionId]?.contains(jeanWaistSize31) ?? false;

    var legItems = [
      jeanLegSize30,
      jeanLegSize32,
    ];

    if (is28) {
      legItems = [
        jeanLegSize34,
      ];
    }

    if (is31) {
      legItems = [
        jeanLegSize34,
        jeanLegSize32,
      ];
    }

    return PickerEngineWidget(
      key: Key(widget.id),
      color: ShadTheme.of(context).colorScheme.primary,
      iconDataLocator: faIconNameMapping,
      onStateChanged: (state) {},
      sections: [
        PickerEngineSection(
          id: waistSectionId,
          title: 'Elige un WAIST',
          //initialSelection: _selected[waistSectionId],
          options: const [
            jeanWaistSize28,
            jeanWaistSize31,
            jeanWaistSize32,
          ],
          onSelectedChanged: (selected) {
            setState(() {
              _selected[waistSectionId] = selected;
            });
          },
        ),
        PickerEngineSection(
          id: legSectionId,
          title: 'Elige un LEG LENGTH',
          options: legItems,
        ),
      ],
    );
  }
}
