import 'package:flutter/material.dart';

/// @no-doc
class Store {
  /// @no-doc
  const Store({
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
  final Map<String, StorePicker> pickers;

  /// @no-doc
  @override
  String toString() => id;
}

/// @no-doc
class StorePicker {
  /// @no-doc
  const StorePicker({
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
