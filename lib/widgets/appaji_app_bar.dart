import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../localization/language_notifier.dart';
import 'appaji_drawer.dart';

class AppajiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const AppajiAppBar({super.key, this.bottom});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final notifier = context.watch<LanguageNotifier>();

    return AppBar(
      title: Text(t.appName),
      bottom: bottom, // ✅ NOW SUPPORTED
      actions: [
        DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            value: notifier.locale,
            icon: const Icon(Icons.language, color: Colors.white),
            items: const [
              DropdownMenuItem(value: Locale('en'), child: Text("English")),
              DropdownMenuItem(value: Locale('kn'), child: Text("ಕನ್ನಡ")),
              DropdownMenuItem(value: Locale('hi'), child: Text("हिन्दी")),
              DropdownMenuItem(value: Locale('ta'), child: Text("தமிழ்")),
              DropdownMenuItem(value: Locale('te'), child: Text("తెలుగు")),
            ],
            onChanged: (locale) {
              if (locale != null) notifier.changeLanguage(locale);
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}