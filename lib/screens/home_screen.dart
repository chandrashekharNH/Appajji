import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/appaji_app_bar.dart';
import '../../widgets/section_title.dart';
import '../../localization/language_notifier.dart';
import '../../navigation/app_routes.dart';
import '../../l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final localeCode = context.select<LanguageNotifier, String>(
          (n) => n.locale.languageCode,
    );
    final bool isKannada = localeCode == 'kn';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔶 HERO SECTION
            Stack(
              children: [
                Image.asset(
                  "assets/images/hero/home_hero.jpg",
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 260,
                    color: Colors.orange.shade100,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.temple_hindu,
                      size: 64,
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
                  bottom: 24,
                  left: 16,
                  right: 16,
                  child: Text(
                    isKannada
                        ? "ಧರ್ಮವನ್ನು ರಕ್ಷಿಸಿದವನನ್ನು ಧರ್ಮ ರಕ್ಷಿಸುತ್ತದೆ"
                        : "Dharma protects those who protect it",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // 🌼 MISSION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                isKannada
                    ? "ಆಧ್ಯಾತ್ಮ, ಸೇವೆ ಮತ್ತು ಸಂಸ್ಕೃತಿಯ ಮೂಲಕ ಸಮಾಜ ನಿರ್ಮಾಣ"
                    : "Building society through spirituality, service, and culture",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),

            const SizedBox(height: 24),

            // ⚡ QUICK ACTIONS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionCard(
                    icon: Icons.volunteer_activism,
                    label: t.donate,
                    route: AppRoutes.donate,
                  ),
                  _ActionCard(
                    icon: Icons.temple_hindu,
                    label: t.temple,
                    route: AppRoutes.temple,
                  ),
                  _ActionCard(
                    icon: Icons.photo_library,
                    label: t.gallery,
                    route: AppRoutes.gallery,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // 🌸 HIGHLIGHTS
            SectionTitle(
              title: isKannada ? "ಮುಖ್ಯ ಚಟುವಟಿಕೆಗಳು" : "Our Activities",
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  _HighlightCard(
                    icon: Icons.self_improvement,
                    label: isKannada
                        ? "ಆಧ್ಯಾತ್ಮಿಕ ಕೇಂದ್ರ"
                        : "Spiritual Center",
                    route: AppRoutes.about,
                  ),
                  _HighlightCard(
                    icon: Icons.spa,
                    label: isKannada
                        ? "ಯೋಗ ಮತ್ತು ಧ್ಯಾನ"
                        : "Yoga & Meditation",
                    route: AppRoutes.about,
                  ),
                  _HighlightCard(
                    icon: Icons.temple_hindu,
                    label: isKannada
                        ? "ಗ್ರ್ಯಾಂಡ್ ದೇವಸ್ಥಾನ"
                        : "Grand Temple",
                    route: AppRoutes.temple,
                  ),
                  _HighlightCard(
                    icon: Icons.favorite,
                    label: isKannada
                        ? "ಸೇವಾ ಚಟುವಟಿಕೆಗಳು"
                        : "Charitable Activities",
                    route: AppRoutes.about,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}

// ================= SUPPORTING WIDGETS =================

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  const _ActionCard({
    required this.icon,
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushNamed(route);
      },
      child: Column(
        children: [
          Material(
            color: Theme.of(context).primaryColor,
            shape: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Icon(icon, size: 28, color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}

class _HighlightCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  const _HighlightCard({
    required this.icon,
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushNamed(route);
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36),
              const SizedBox(height: 12),
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}