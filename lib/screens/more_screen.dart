import 'package:flutter/material.dart';
import '../widgets/appaji_app_bar.dart';
import '../navigation/app_routes.dart';
import '../l10n/app_localizations.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      body: ListView(
        children: [
          _item(
            context,
            icon: Icons.info_outline,
            title: t.about,
            route: AppRoutes.about,
          ),
          _item(
            context,
            icon: Icons.temple_hindu,
            title: t.temple,
            route: AppRoutes.temple,
          ),
          _item(
            context,
            icon: Icons.volunteer_activism,
            title: t.donate,
            route: AppRoutes.donate,
          ),
          _item(
            context,
            icon: Icons.photo_library,
            title: t.gallery,
            route: AppRoutes.gallery,
          ),
        ],
      ),
    );
  }

  Widget _item(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String route,
      }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushNamed(route);
      },
    );
  }
}