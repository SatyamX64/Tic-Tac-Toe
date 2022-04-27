import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';
import 'move.dart';

part 'player.dart';

class EasyBot implements Player, Computer {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  @override
  int nextMove(List<Move> board) {
    return board.indexWhere((element) => element == const Move.empty());
  }

  EasyBot()
      : color = const Color(0xFF5B4DD0),
        image = Assets.images.easy,
        name = 'Easy Bot',
        move = Move.O();
}

class MediumBot implements Player, Computer {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  @override
  int nextMove(List<Move> board) {
    return board.indexWhere((element) => element == const Move.empty());
  }

  MediumBot()
      : color = const Color(0xFFFBDB45),
        image = Assets.images.medium,
        name = 'Medium Bot',
        move = Move.O();
}

class HardBot implements Player, Computer {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  @override
  int nextMove(List<Move> board) {
    return board.indexWhere((element) => element == const Move.empty());
  }

  HardBot()
      : color = const Color(0xFFE56871),
        image = Assets.images.hard,
        name = 'Hard Bot',
        move = Move.O();
}

class PlayerA implements Player {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  PlayerA()
      : color = const Color(0xFFE56871),
        image = Assets.images.hard,
        name = 'Player A',
        move = Move.X();
}

class PlayerB implements Player {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  PlayerB()
      : color = const Color(0xFFE56871),
        image = Assets.images.hard,
        name = 'Player B',
        move = Move.O();
}
