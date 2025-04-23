import 'package:flutter/material.dart';

enum AppScreen {
  home,
  createAccount,
  headphoneLocator,
  audiologist,
  helpFaq,
  devicePairing,
  alertHistory,
  accountPreferences,
  settings,
}

class AppState with ChangeNotifier {
  AppScreen _currentScreen = AppScreen.home;
  bool _isLoggedIn = false;

  AppScreen get currentScreen => _currentScreen;
  bool get isLoggedIn => _isLoggedIn;

  void navigateTo(AppScreen screen) {
    _currentScreen = screen;
    notifyListeners();
  }

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}