import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadBackIconButton extends StatelessWidget {
  const ShadBackIconButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ShadButton.outline(
      decoration: const ShadDecoration(
        border: ShadBorder.none,
      ),
      icon: const Icon(
        FontAwesomeIcons.arrowLeft,
        size: 14,
      ),
      onPressed: onPressed,
    );
  }
}
