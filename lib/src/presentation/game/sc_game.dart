import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const route = '/game';
  @override
  Widget build(BuildContext context) {
    return const GradientScaffold(
      body: Center(
        child: Text('Game Screen'),
      ),
    );
  }
}
