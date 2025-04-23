import 'package:echomap/screens/account_preferences_screen.dart';
import 'package:echomap/screens/alert_history_screen.dart';
import 'package:echomap/screens/audiologist_screen.dart';
import 'package:echomap/screens/create_account_screen.dart';
import 'package:echomap/screens/device_pairing_screen.dart';
import 'package:echomap/screens/headphone_locator_screen.dart';
import 'package:echomap/screens/help_faq_screen.dart';
import 'package:echomap/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/app_state.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const HeadphoneBuddyApp(),
    ),
  );
}

class HeadphoneBuddyApp extends StatelessWidget {
  const HeadphoneBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headphone Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppRouter(),
    );
  }
}

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    switch (appState.currentScreen) {
      case AppScreen.home:
        return const HomeScreen();
      case AppScreen.createAccount:
        return const CreateAccountScreen();
      case AppScreen.headphoneLocator:
        return const HeadphoneLocatorScreen();
      case AppScreen.audiologist:
        return const AudiologistScreen();
      case AppScreen.helpFaq:
        return const HelpFaqScreen();
      case AppScreen.devicePairing:
        return const DevicePairingScreen();
      case AppScreen.alertHistory:
        return const AlertHistoryScreen();
      case AppScreen.accountPreferences:
        return const AccountPreferencesScreen();
      case AppScreen.settings:
        return const SettingsScreen();
      }
  }
}