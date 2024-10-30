import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: StorePickersOptionsView(),
      ),
    );
  }
}

class StorePickersOptionsView extends StatelessWidget {
  const StorePickersOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StorePickersOptionView(
            subOptions: ['1', '2'],
            onItemPressed: (item) => context.navigateToDetails(item),
          ),
          StorePickersOptionView(
            subOptions: ['A', 'B'],
            onItemPressed: (item) => context.navigateToDetails(item),
          )
        ],
      ),
    );
  }
}

class StorePickersOptionView extends StatelessWidget {
  const StorePickersOptionView({
    required this.subOptions,
    required this.onItemPressed,
    super.key,
  });

  final List<String> subOptions;
  final void Function(String) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('TITLE'),
          ...subOptions
              .map(
                (option) => ListTile(
                  title: Text(option),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () => onItemPressed(option),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
