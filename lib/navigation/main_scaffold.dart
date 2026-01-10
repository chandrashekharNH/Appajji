import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/events_screen.dart';
import '../screens/media_screen.dart';
import '../screens/more_screen.dart';
import '../widgets/appaji_app_bar.dart';
import '../widgets/appaji_drawer.dart';
import '../l10n/app_localizations.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  // 🔹 Bottom-tab screens
  final List<Widget> _screens = const [
    HomeScreen(),
    EventsScreen(),
    MediaScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      // ✅ GLOBAL APP BAR
      appBar: const AppajiAppBar(),

      // ✅ GLOBAL DRAWER
      drawer: const AppajiDrawer(),

      // ✅ KEEP STATE OF TABS
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),

      // ✅ BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: t.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.event),
            label: t.events,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.photo_library),
            label: t.media,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.more_horiz),
            label: t.more,
          ),
        ],
      ),
    );
  }
}