import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';
import '../services/game_helper.dart';
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
  int nextMove(List<Move> board, Move move) {
    final availableSlots = GameHelper.availableTiles(board);
    var pos = Random().nextInt(availableSlots.length);
    return availableSlots[pos];
  }

  EasyBot({Move? move})
      : color = const Color(0xFF5B4DD0),
        image = Assets.images.easy,
        name = 'Easy Bot',
        move = move ?? const Move.O();
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
  int nextMove(List<Move> board, Move move) {
    if (Random().nextBool()) {
      final availableSlots = GameHelper.availableTiles(board);
      var pos = Random().nextInt(availableSlots.length);
      return availableSlots[pos];
    }
    return GameHelper.optimalPosition(board, move);
  }

  MediumBot({Move? move})
      : color = const Color(0xFFFBDB45),
        image = Assets.images.medium,
        name = 'Medium Bot',
        move = move ?? const Move.O();
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
  int nextMove(List<Move> board, Move move) {
    return GameHelper.optimalPosition(board, move);
  }

  HardBot({Move? move})
      : color = const Color(0xFFE56871),
        image = Assets.images.hard,
        name = 'Hard Bot',
        move = move ?? const Move.O();
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

  PlayerA({Move? move})
      : color = const Color(0xFFE56871),
        image = Assets.images.a,
        name = 'Player A',
        move = move ?? const Move.X();
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

  PlayerB({Move? move})
      : color = const Color(0xFFE56871),
        image = Assets.images.b,
        name = 'Player B',
        move = move ?? const Move.O();
}
