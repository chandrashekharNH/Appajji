import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../localization/language_notifier.dart';
import '../l10n/app_localizations.dart';

class AppajiAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AppajiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final notifier = context.watch<LanguageNotifier>();

    return AppBar(
      title: Text(t.appName),
      centerTitle: true,
      actions: [
        DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            value: notifier.locale,
            icon: const Icon(Icons.language, color: Colors.white),
            dropdownColor: Colors.white,
            items: const [
              DropdownMenuItem(value: Locale('en'), child: Text("English")),
              DropdownMenuItem(value: Locale('kn'), child: Text("ಕನ್ನಡ")),
              DropdownMenuItem(value: Locale('hi'), child: Text("हिन्दी")),
              DropdownMenuItem(value: Locale('ta'), child: Text("தமிழ்")),   // ✅ Tamil),
              DropdownMenuItem(value: Locale('te'), child: Text("తెలుగు")), // ✅ TelugU
            ],
            onChanged: (locale) {
              if (locale != null) {
                notifier.changeLanguage(locale);
              }
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}