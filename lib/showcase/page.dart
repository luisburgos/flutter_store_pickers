import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/state.dart';
import 'package:flutter_store_pickers/showcase/view.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            final data = ShowcaseState.of(context).data;
            return ShowcaseView(
              data: data,
            );
          },
        ),
      ),
    );
  }
}
