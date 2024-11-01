import 'package:flutter/material.dart';

/// @no-doc
class ShowcaseData {
  const ShowcaseData({
    required this.title,
    required this.description,
    required this.groups,
  });

  /// @no-doc
  final String title;

  /// @no-doc
  final String description;

  /// @no-doc
  final Map<String, ShowcaseGroupData> groups;
}

/// @no-doc
class ShowcaseGroupData {
  const ShowcaseGroupData({
    required this.id,
    required this.title,
    required this.items,
    required this.hexColor,
    this.description,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String title;

  /// @no-doc
  final String? description;

  /// @no-doc
  final String hexColor;

  /// @no-doc
  final Map<String, ShowcaseItemData> items;
}

/// @no-doc
class ShowcaseItemData {
  const ShowcaseItemData({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
    required this.viewBuilder,
  });

  /// @no-doc
  final String id;

  /// @no-doc
  final String title;

  /// @no-doc
  final String description;

  /// @no-doc
  final String iconName;

  /// @no-doc
  final Widget Function(ShowcaseGroupData) viewBuilder;
}
