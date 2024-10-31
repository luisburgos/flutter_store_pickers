import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/fake_data.dart';
import 'package:flutter_store_pickers/showcase/stores/view.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StoresView(
          stores: globalStores.values.toList(),
        ),
      ),
    );
  }
}
