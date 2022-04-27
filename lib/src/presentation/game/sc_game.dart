import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

import '../../models/players.dart';
import 'board.dart';
import 'player_card.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({required this.A, required this.B, Key? key})
      : super(key: key);

  final Player A, B;
  static const route = '/game';
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 276,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PlayerCard(
                    player: A,
                    turn: true,
                  ),
                  PlayerCard(
                    player: B,
                    turn: false,
                  ),
                ],
              ),
            ),
            const WinBoard(),
          ],
        ),
      ),
    );
  }
}
