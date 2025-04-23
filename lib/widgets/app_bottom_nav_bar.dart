import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_state.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentScreen = context.watch<AppState>().currentScreen;

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Headphone Locator'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Audiologist'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
      currentIndex: _getCurrentIndex(currentScreen),
      onTap: (index) => _onItemTapped(index, context),
    );
  }

  int _getCurrentIndex(AppScreen screen) {
    switch (screen) {
      case AppScreen.home:
        return 0;
      case AppScreen.headphoneLocator:
        return 1;
      case AppScreen.audiologist:
        return 2;
      case AppScreen.settings:
        return 3;
      default:
        return 0;
    }
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.read<AppState>().navigateTo(AppScreen.home);
        break;
      case 1:
        context.read<AppState>().navigateTo(AppScreen.headphoneLocator);
        break;
      case 2:
        context.read<AppState>().navigateTo(AppScreen.audiologist);
        break;
      case 3:
        context.read<AppState>().navigateTo(AppScreen.settings);
        break;
    }
  }
}