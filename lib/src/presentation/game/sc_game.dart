import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gen/assets.gen.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

import 'board.dart';
import 'player_card.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

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
                  PlayerCard.X(
                    backgroundColor: const Color(0xFFFBDB45),
                    image: Assets.images.medium,
                    name: 'Medium Bot',
                    turn: true,
                  ),
                  PlayerCard.O(
                    backgroundColor: const Color(0xFF5B4DD0),
                    image: Assets.images.easy,
                    name: 'Easy Bot',
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
