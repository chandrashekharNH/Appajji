import 'package:flutter/material.dart';
import '../widgets/appaji_app_bar.dart';
import '../l10n/app_localizations.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppajiAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.about,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Text(
              "Appaji is a spiritual and charitable mission focused on "
                  "Dharma, service, and cultural upliftment.\n\n"
                  "Our goal is to spread spiritual awareness, build a grand temple, "
                  "and serve society through education, health, and Annadanam.",
              style: TextStyle(height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}