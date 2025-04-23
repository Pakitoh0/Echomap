import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bottom_nav_bar.dart';

class HeadphoneLocatorScreen extends StatelessWidget {
  const HeadphoneLocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Headphone Locator')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Ring Headphones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Navigate to Last Known Position'),
            onPressed: () {
              // Implement navigation to last known position
            },
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}