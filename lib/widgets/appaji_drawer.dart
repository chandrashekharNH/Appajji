import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../localization/language_notifier.dart';
import '../navigation/app_routes.dart';

class AppajiDrawer extends StatelessWidget {
  const AppajiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final notifier = context.watch<LanguageNotifier>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          // 🔶 HEADER
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                t.drawerTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 🔹 NAVIGATION
          _sectionTitle(context, t.drawerNavigation),

          _drawerItem(
            context,
            icon: Icons.home,
            title: t.drawerHome,
            route: AppRoutes.root,
          ),

          _drawerItem(
            context,
            icon: Icons.info_outline,
            title: t.drawerAbout,
            route: AppRoutes.about,
          ),

          _drawerItem(
            context,
            icon: Icons.temple_hindu,
            title: t.drawerTemple,
            route: AppRoutes.temple,
          ),

          _drawerItem(
            context,
            icon: Icons.volunteer_activism,
            title: t.drawerDonate,
            route: AppRoutes.donate,
          ),

          _drawerItem(
            context,
            icon: Icons.photo_library,
            title: t.drawerGallery,
            route: AppRoutes.gallery,
          ),

          _drawerItem(
            context,
            icon: Icons.event,
            title: t.drawerEvents,
            route: AppRoutes.root, // opens Events tab
          ),

          const Divider(),

          // 🔹 SETTINGS
          _sectionTitle(context, t.drawerSettings),

          ListTile(
            leading: const Icon(Icons.language),
            title: Text(t.drawerLanguage),
            trailing: DropdownButton<Locale>(
              value: notifier.locale,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text("English"),
                ),
                DropdownMenuItem(
                  value: Locale('kn'),
                  child: Text("ಕನ್ನಡ"),
                ),
                DropdownMenuItem(
                  value: Locale('hi'),
                  child: Text("हिन्दी"),
                ),
                DropdownMenuItem(
                  value: Locale('ta'),
                  child: Text("தமிழ்"),   // ✅ Tamil
                ),
                DropdownMenuItem(
                  value: Locale('te'),
                  child: Text("తెలుగు"), // ✅ Telugu
                ),
              ],
              onChanged: (locale) {
                if (locale != null) {
                  notifier.changeLanguage(locale);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 DRAWER ITEM
  Widget _drawerItem(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String route,
      }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // close drawer
        Navigator.of(context, rootNavigator: true).pushNamed(route);
      },
    );
  }

  // 🔹 SECTION TITLE
  Widget _sectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}