import 'package:flutter/material.dart';
import '../widgets/appaji_app_bar.dart';
import '../l10n/app_localizations.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Text(
          t.media,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}