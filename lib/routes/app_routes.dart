import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption> [
    MenuOption(
      route: 'home',
      icon: Icons.house_rounded,
      name: 'Home Screen',
      screen: const HomeScreen()
    )
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'home': (BuildContext context) => const HomeScreen(),
      };

  
}