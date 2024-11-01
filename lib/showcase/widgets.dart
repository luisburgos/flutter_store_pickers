import 'package:flutter/material.dart';

class ShowcaseViewTitle extends StatelessWidget {
  const ShowcaseViewTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ShowcaseViewDescription extends StatelessWidget {
  const ShowcaseViewDescription(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        height: 1.2,
      ),
    );
  }
}
