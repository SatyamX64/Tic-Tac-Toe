import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gen/assets.gen.dart';

import '../../models/move.dart';

part 'board_components.dart';

class GameBoard extends StatelessWidget {
  const GameBoard(this.moves, {required this.onTap, Key? key})
      : super(key: key);

  final List<Move> moves;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return _Board(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            onTap(index);
          },
          child: _BoardTile(
            move: moves[index],
          ),
        ),
        itemCount: 9,
      ),
    );
  }
}

class WinBoard extends StatelessWidget {
  const WinBoard({required this.onTap, required this.name, Key? key})
      : super(key: key);
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return _GameOverBoard.win(
      onTap: onTap,
      name: name,
    );
  }
}

class TieBoard extends StatelessWidget {
  const TieBoard({required this.onTap, Key? key}) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return _GameOverBoard.tie(
      onTap: onTap,
    );
  }
}
