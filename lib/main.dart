import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'theme/app_theme.dart';
import 'navigation/main_scaffold.dart';
import 'navigation/app_routes.dart';
import 'localization/language_notifier.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LanguageNotifier(),
      child: const AppajiApp(),
    ),
  );
}

class AppajiApp extends StatelessWidget {
  const AppajiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageNotifier>(
      builder: (context, notifier, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // 🌈 Locale-based theme
          theme: AppTheme.themeForLocale(notifier.locale),
          locale: notifier.locale,

          supportedLocales: const [
            Locale('en'), // English
            Locale('kn'), // Kannada
            Locale('hi'), // Hindi
            Locale('ta'), // ✅ Tamil
            Locale('te'), // ✅ Telugu
          ],

          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          // ✅ IMPORTANT
          initialRoute: AppRoutes.root,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}