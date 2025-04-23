import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bottom_nav_bar.dart';

class AlertHistoryScreen extends StatelessWidget {
  const AlertHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert History')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          AlertHistoryItem(
            date: '23 May 2023, 13:45',
            message: 'Your headphones are out of battery. They disconnected from your device.',
            location: 'Last known location: Your headphones were connected at 360 E 62nd St, New York.',
          ),
          Divider(),
          AlertHistoryItem(
            date: '21 May 2023, 09:10',
            message: 'Your headphones are out of battery. They disconnected from your device.',
          ),
          Divider(),
          AlertHistoryItem(
            date: '20 May 2023, 08:15',
            message: 'You started using your headphones with a different device instead.',
          ),
          Divider(),
          AlertHistoryItem(
            date: '18 May 2023, 16:30',
            message: 'Headphones went out of range.',
          ),
          Divider(),
          AlertHistoryItem(
            date: '18 May 2023, 12:00',
            message: 'Your headphones were disconnected.',
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}

class AlertHistoryItem extends StatelessWidget {
  final String date;
  final String message;
  final String? location;

  const AlertHistoryItem({
    super.key,
    required this.date,
    required this.message,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 4),
        Text(message),
        if (location != null) ...[
          const SizedBox(height: 4),
          Text(location!, style: const TextStyle(color: Colors.blue)),
        ],
      ],
    );
  }
}