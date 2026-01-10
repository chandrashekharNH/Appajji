import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../localization/language_notifier.dart';
import '../widgets/section_title.dart';
import '../widgets/appaji_app_bar.dart';

class TempleScreen extends StatelessWidget {
  const TempleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final isKannada =
        context.watch<LanguageNotifier>().locale.languageCode == 'kn';

    return Scaffold(
      appBar: AppajiAppBar(),

      // ❌ NO AppBar here (MainScaffold owns it)
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔶 HERO SECTION
            Stack(
              children: [
                Image.asset(
                  'assets/images/temple/temple_hero.jpg',
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 260,
                    color: Colors.orange.shade100,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.temple_hindu,
                      size: 72,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 16,
                  right: 16,
                  child: Text(
                    isKannada
                        ? "ಶ್ರೀ ಲಕ್ಷ್ಮೀ ವೆಂಕಟೇಶ್ವರ ಮಹಾ ದೇವಾಲಯ"
                        : t.templeTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // 🌼 TEMPLE VISION
            SectionTitle(
              title: isKannada
                  ? "ದೇವಾಲಯದ ದೃಷ್ಟಿ"
                  : t.templeVisionTitle,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                isKannada
                    ? "ಭಕ್ತಿ, ಸಂಸ್ಕೃತಿ ಮತ್ತು ಆಧ್ಯಾತ್ಮದ ಕೇಂದ್ರವಾಗಿ ಮಹಾ ದೇವಾಲಯವನ್ನು ನಿರ್ಮಿಸುವ ಉದ್ದೇಶ."
                    : t.templeVisionDesc,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 24),

            // 🏛️ ARCHITECTURE
            SectionTitle(
              title: isKannada
                  ? "ವಾಸ್ತುಶಿಲ್ಪ ಮತ್ತು ವಿನ್ಯಾಸ"
                  : t.templeArchitectureTitle,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                isKannada
                    ? "ಪಾರಂಪರಿಕ ದ್ರಾವಿಡ ಶೈಲಿಯಲ್ಲಿ ದೇವಾಲಯದ ವಿನ್ಯಾಸ ರೂಪಿಸಲಾಗಿದೆ."
                    : t.templeArchitectureDesc,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 24),

            // 🚧 CONSTRUCTION STATUS
            SectionTitle(
              title: isKannada
                  ? "ನಿರ್ಮಾಣ ಸ್ಥಿತಿ"
                  : t.templeConstructionTitle,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.construction,
                        size: 36,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          isKannada
                              ? "ಮೊದಲ ಹಂತದ ನಿರ್ಮಾಣ ಪ್ರಗತಿಯಲ್ಲಿದೆ."
                              : t.templeConstructionDesc,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🤝 SUPPORT SECTION
            SectionTitle(
              title: isKannada
                  ? "ನಿಮ್ಮ ಬೆಂಬಲ ಅಗತ್ಯ"
                  : t.templeSupportTitle,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                isKannada
                    ? "ದೇವಾಲಯ ನಿರ್ಮಾಣಕ್ಕೆ ನಿಮ್ಮ ದಾನ ಮತ್ತು ಸೇವೆ ಅತ್ಯಂತ ಅಗತ್ಯ."
                    : t.templeSupportDesc,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}