import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

part 'board_components.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Board(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) =>
            index.isEven ? const _BoardTile.O() : const _BoardTile.X(),
        itemCount: 9,
      ),
    );
  }
}

class WinBoard extends StatelessWidget {
  const WinBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _GameOverBoard.win();
  }
}

class LoseBoard extends StatelessWidget {
  const LoseBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _GameOverBoard.lose();
  }
}
