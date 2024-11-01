import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/l10n/l10n.dart';
import 'package:flutter_store_pickers/showcase/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      builder: (_) => const ShowcaseDataProvider(
        child: _ShowcaseApp(),
      ),
    );
  }
}

class _ShowcaseApp extends StatelessWidget {
  const _ShowcaseApp();

  @override
  Widget build(BuildContext context) {
    const colorSchemeName = 'stone';
    final textTheme = ShadTextTheme.fromGoogleFont(
      GoogleFonts.inter,
    );

    return ShadApp.router(
      routerConfig: defaultAppRouter,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: ShadColorScheme.fromName(
          colorSchemeName,
          brightness: Brightness.dark,
        ),
        textTheme: textTheme,
      ),
      theme: ShadThemeData(
        brightness: Brightness.light,
        colorScheme: ShadColorScheme.fromName(
          colorSchemeName,
        ),
        textTheme: textTheme,
      ),
    );
  }
}
