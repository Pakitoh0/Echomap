import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bottom_nav_bar.dart';

class AudiologistScreen extends StatefulWidget {
  const AudiologistScreen({super.key});

  @override
  State<AudiologistScreen> createState() => _AudiologistScreenState();
}

class _AudiologistScreenState extends State<AudiologistScreen> {
  bool bookAppointment = false;
  bool sendMessage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Call Audiologist')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text('📌 Make a call', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          CheckboxListTile(
            title: const Text('Book Appointment'),
            value: bookAppointment,
            onChanged: (value) => setState(() => bookAppointment = value ?? false),
          ),
          CheckboxListTile(
            title: const Text('Send Message'),
            value: sendMessage,
            onChanged: (value) => setState(() => sendMessage = value ?? false),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}