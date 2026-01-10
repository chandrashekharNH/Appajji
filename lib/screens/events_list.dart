import 'package:flutter/material.dart';

class EventsList extends StatelessWidget {
  final bool isUpcoming;

  const EventsList({super.key, required this.isUpcoming});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(
              isUpcoming
                  ? "Temple Mahotsava ${index + 1}"
                  : "Past Event ${index + 1}",
            ),
            subtitle: const Text("12 March 2026"),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: isUpcoming
                    ? const Color(0xFFE65100)
                    : Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                isUpcoming ? "Upcoming" : "Completed",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              // TODO: Navigate to Event Detail
            },
          ),
        );
      },
    );
  }
}