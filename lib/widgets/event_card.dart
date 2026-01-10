import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: const Text("Temple Mahotsava"),
          subtitle: const Text("12 March 2026"),
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFE65100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "Upcoming",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}