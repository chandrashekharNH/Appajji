import 'package:flutter/material.dart';
import '../widgets/appaji_app_bar.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppajiAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Donate\n\nYour support builds Dharma.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}