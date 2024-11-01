import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/models.dart';

class ShowcaseState extends InheritedWidget {
  const ShowcaseState({
    required this.data,
    required super.child,
    super.key,
  });

  final ShowcaseData data;

  static ShowcaseState of(BuildContext context) {
    final state = context.dependOnInheritedWidgetOfExactType<ShowcaseState>();
    if (state == null) {
      throw Exception('MyFlutterGallery not found in the widget tree');
    }
    return state;
  }

  @override
  bool updateShouldNotify(ShowcaseState oldWidget) {
    return oldWidget.data != data;
  }
}
