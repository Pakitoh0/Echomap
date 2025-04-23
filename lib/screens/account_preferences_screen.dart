import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_state.dart';

class AccountPreferencesScreen extends StatefulWidget {
  const AccountPreferencesScreen({super.key});

  @override
  State<AccountPreferencesScreen> createState() => _AccountPreferencesScreenState();
}

class _AccountPreferencesScreenState extends State<AccountPreferencesScreen> {
  String name = 'John Doe';
  String email = 'john.doe@example.com';
  String phone = '';
  String language = 'English';
  bool pushNotifications = true;
  bool emailNotifications = true;
  bool promotionalMessages = false;
  bool highContrastMode = false;
  bool screenReader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account Preferences')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text('Complete your profile information'),
          const SizedBox(height: 20),
          TextFormField(
            initialValue: name,
            decoration: const InputDecoration(labelText: 'Name'),
            onChanged: (value) => name = value,
          ),
          TextFormField(
            initialValue: email,
            decoration: const InputDecoration(labelText: 'Email address'),
            onChanged: (value) => email = value,
          ),
          TextFormField(
            initialValue: phone,
            decoration: const InputDecoration(labelText: 'Phone number'),
            onChanged: (value) => phone = value,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Save changes'),
            onPressed: () {
              // Save changes
            },
          ),
          const Divider(),
          const Text('App Language', style: TextStyle(fontWeight: FontWeight.bold)),
          DropdownButton<String>(
            value: language,
            items: ['English', 'Spanish', 'French', 'German']
                .map((lang) => DropdownMenuItem(value: lang, child: Text(lang)))
                .toList(),
            onChanged: (value) => setState(() => language = value!),
          ),
          ElevatedButton(
            child: const Text('Save Language Preference'),
            onPressed: () {
              // Save language preference
            },
          ),
          const Divider(),
          const Text('Push notifications', style: TextStyle(fontWeight: FontWeight.bold)),
          SwitchListTile(
            title: const Text('Enable push notifications'),
            value: pushNotifications,
            onChanged: (value) => setState(() => pushNotifications = value),
          ),
          SwitchListTile(
            title: const Text('Email notifications'),
            value: emailNotifications,
            onChanged: (value) => setState(() => emailNotifications = value),
          ),
          SwitchListTile(
            title: const Text('Promotional messages'),
            value: promotionalMessages,
            onChanged: (value) => setState(() => promotionalMessages = value),
          ),
          const Divider(),
          const Text('Accessibility', style: TextStyle(fontWeight: FontWeight.bold)),
          SwitchListTile(
            title: const Text('High contrast mode'),
            value: highContrastMode,
            onChanged: (value) => setState(() => highContrastMode = value),
          ),
          SwitchListTile(
            title: const Text('Screen reader'),
            value: screenReader,
            onChanged: (value) => setState(() => screenReader = value),
          ),
          const Divider(),
          ElevatedButton(
            child: const Text('Logout'),
            onPressed: () {
              context.read<AppState>().logout();
              context.read<AppState>().navigateTo(AppScreen.home);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Preferences'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 3,
        onTap: (index) {
          switch (index) {
            case 0:
              context.read<AppState>().navigateTo(AppScreen.home);
              break;
            case 1:
            // Navigate to preferences
              break;
            case 2:
              context.read<AppState>().navigateTo(AppScreen.settings);
              break;
            case 3:
            // Already on profile
              break;
          }
        },
      ),
    );
  }
}