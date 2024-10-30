import 'package:flutter/material.dart';

/// @no-doc
class ShowcaseStore {
  /// @no-doc
  const ShowcaseStore({
    required this.id,
    required this.name,
    required this.description,
    required this.brandHexColor,
    required this.pickers,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String name;

  /// @no-doc
  final String description;

  /// @no-doc
  final String brandHexColor;

  /// @no-doc
  final Map<String, ShowcaseStorePicker> pickers;

  /// @no-doc
  @override
  String toString() => id;
}

/// @no-doc
class ShowcaseStorePicker {
  /// @no-doc
  const ShowcaseStorePicker({
    required this.id,
    required this.name,
    required this.description,
    required this.iconName,
    required this.builder,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String name;

  /// @no-doc
  final String iconName;

  /// @no-doc
  final String description;

  /// @no-doc
  final Widget Function() builder;

  /// @no-doc
  @override
  String toString() => id;
}
