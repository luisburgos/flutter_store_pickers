import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            context.navigateToDetails('test');
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}