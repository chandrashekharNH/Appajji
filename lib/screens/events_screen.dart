import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import '../widgets/appaji_app_bar.dart';
import 'events_list.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: const TabBarView(
          children: [
            EventsList(isUpcoming: true),
            EventsList(isUpcoming: false),
          ],
        ),
      ),
    );
  }
}