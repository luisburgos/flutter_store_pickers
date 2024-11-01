import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/state.dart';

class ShowcaseDataProvider extends StatefulWidget {
  const ShowcaseDataProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<ShowcaseDataProvider> createState() => _ShowcaseDataProviderState();
}

class _ShowcaseDataProviderState extends State<ShowcaseDataProvider> {
  @override
  Widget build(BuildContext context) {
    return ShowcaseState(
      data: showcaseData,
      child: widget.child,
    );
  }
}
