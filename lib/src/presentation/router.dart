import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/models/players.dart';
import 'package:tic_tac_toe/src/presentation/difficulty/sc_difficulty.dart';
import 'package:tic_tac_toe/src/presentation/game/sc_game.dart';
import 'package:tic_tac_toe/src/presentation/menu/sc_menu.dart';
import 'package:tic_tac_toe/src/presentation/rules/sc_rules.dart';
import 'package:tic_tac_toe/src/services/game_service.dart';

class AppRouter {
  static const String initialRoute = MenuScreen.route;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case MenuScreen.route:
            return const MenuScreen();
          case DifficultyScreen.route:
            return const DifficultyScreen();
          case GameScreen.route:
            final playerB = settings.arguments as Player;
            return GameScreen(
              service: GameService(A: PlayerA(), B: playerB),
            );
          case RulesScreen.route:
            return const RulesScreen();
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
