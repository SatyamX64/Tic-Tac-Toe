import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/models/players.dart';
import 'package:tic_tac_toe/src/presentation/difficulty/sc_difficulty.dart';
import 'package:tic_tac_toe/src/presentation/game/sc_game.dart';
import 'package:tic_tac_toe/src/presentation/menu/sc_menu.dart';
import 'package:tic_tac_toe/src/presentation/rules/sc_rules.dart';
import 'package:tic_tac_toe/src/services/game_service.dart';

class AppRouter {
  static const String initialRoute = MenuScreen.route;
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MenuScreen.route:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MenuScreen());

      case DifficultyScreen.route:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const DifficultyScreen());

      case GameScreen.route:
        final playerB = settings.arguments as Player;
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => ChangeNotifierProvider(
                  create: (_) => GameService(A: PlayerA(), B: playerB),
                  child: const GameScreen(),
                ));
      case RulesScreen.route:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const RulesScreen());
      default:
        return null;
    }
  }
}
