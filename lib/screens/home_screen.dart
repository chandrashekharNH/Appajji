import 'dart:async';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../navigation/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _profileController = PageController();
  final PageController _thoughtController = PageController();

  Timer? _profileTimer;
  Timer? _thoughtTimer;

  int _profileIndex = 0;
  int _thoughtIndex = 0;

  final List<String> profileImages = [
    "assets/images/profilephotos/profile.png",
    "assets/images/profilephotos/profile2.png",
    "assets/images/profilephotos/profile3.png",
  ];

  @override
  void initState() {
    super.initState();

    _profileTimer = Timer.periodic(const Duration(seconds: 6), (_) {
      if (_profileController.hasClients) {
        _profileIndex = (_profileIndex + 1) % profileImages.length;
        _profileController.animateToPage(
          _profileIndex,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    });

    _thoughtTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (_thoughtController.hasClients) {
        _thoughtIndex = (_thoughtIndex + 1) % 9;
        _thoughtController.animateToPage(
          _thoughtIndex,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _profileTimer?.cancel();
    _thoughtTimer?.cancel();
    _profileController.dispose();
    _thoughtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final heroHeight = MediaQuery.of(context).size.height * 0.6;

    final thoughts = [
      t.thought1,
      t.thought2,
      t.thought3,
      t.thought4,
      t.thought5,
      t.thought6,
      t.thought7,
      t.thought8,
      t.thought9,
    ];

    return SingleChildScrollView(
      child: Column(
        children: [

          // ================= HERO PROFILE + THOUGHTS =================
          SizedBox(
            height: heroHeight,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Profile image slider
                PageView.builder(
                  controller: _profileController,
                  itemCount: profileImages.length,
                  itemBuilder: (_, i) {
                    return Image.asset(
                      profileImages[i],
                      fit: BoxFit.cover, // ✅ full width & height
                    );
                  },
                ),

                // Dark gradient overlay
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.25),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),

                // ================= TRANSPARENT THOUGHT BLOCK =================
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 160,
                    child: PageView.builder(
                      controller: _thoughtController,
                      itemCount: thoughts.length,
                      itemBuilder: (_, i) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 20,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.10), // 🔥 90% transparent
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.25),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                thoughts[i],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18,
                                  height: 1.5,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          // ================= GURU DESCRIPTION =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.aboutSwamiji,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      t.swamijiDesc,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // ================= QUICK ACTIONS =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _QuickAction(
                  icon: Icons.temple_hindu,
                  label: t.temple,
                  route: AppRoutes.temple,
                ),
                _QuickAction(
                  icon: Icons.photo_library,
                  label: t.gallery,
                  route: AppRoutes.gallery,
                ),
                _QuickAction(
                  icon: Icons.volunteer_activism,
                  label: t.donate,
                  route: AppRoutes.donate,
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

// ================= QUICK ACTION =================
class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  const _QuickAction({
    required this.icon,
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context, rootNavigator: true).pushNamed(route),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.deepOrange,
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}