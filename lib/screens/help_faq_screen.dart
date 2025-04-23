import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bottom_nav_bar.dart';

class HelpFaqScreen extends StatelessWidget {
  const HelpFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & FAQ')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Search for help topics',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Common Questions',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
              'Find answers to the most common questions about our service.'),
          const SizedBox(height: 20),
          const Text(
            'Troubleshooting',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text('Having problems? We can help you get back on track.'),
          const SizedBox(height: 10),
          const Text(
            'Using Features',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Text(
              'Learn how to use all the features of our service to your advantage.'),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}