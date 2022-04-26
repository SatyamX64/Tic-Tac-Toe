import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/game/sc_game.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

class DifficultyScreen extends StatelessWidget {
  const DifficultyScreen({Key? key}) : super(key: key);

  static const route = '/difficulty';
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(GameScreen.route);
          },
          child: const Text('Select Difficulty'),
        ),
      ),
    );
  }
}
