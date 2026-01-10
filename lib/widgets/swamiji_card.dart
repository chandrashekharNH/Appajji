import 'package:flutter/material.dart';

class SwamijiCard extends StatelessWidget {
  const SwamijiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        color: const Color(0xFFFFF3E0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Color(0xFFFF7A18),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: const Text("Sri Appaji Swamiji"),
          subtitle: const Text("Spiritual guide & social reformer"),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}