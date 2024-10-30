import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      builder: (_) => const _StorePickersApp(),
    );
  }
}

class _StorePickersApp extends StatelessWidget {
  const _StorePickersApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: defaultAppRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
