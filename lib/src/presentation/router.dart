import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/menu/sc_menu.dart';

class AppRouter {
  static const String initialRoute = MenuScreen.route;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case MenuScreen.route:
            return const MenuScreen();
          default:
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
        }
      },
    );
  }
}
