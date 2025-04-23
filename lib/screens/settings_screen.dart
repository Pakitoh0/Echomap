import 'package:echomap/models/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_bottom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help & FAQ'),
            onTap: () => context.read<AppState>().navigateTo(AppScreen.helpFaq),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Alert History'),
            onTap: () => context.read<AppState>().navigateTo(AppScreen.alertHistory),
          ),
          ListTile(
            leading: const Icon(Icons.bluetooth),
            title: const Text('Device Pairing'),
            onTap: () => context.read<AppState>().navigateTo(AppScreen.devicePairing),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account Preferences'),
            onTap: () => context.read<AppState>().navigateTo(AppScreen.accountPreferences),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}