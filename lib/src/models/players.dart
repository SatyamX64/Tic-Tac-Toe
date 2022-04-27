import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';
import 'move.dart';

part 'player.dart';

class EasyBot implements Player {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  EasyBot()
      : color = const Color(0xFF5B4DD0),
        image = Assets.images.easy,
        name = 'Easy Bot',
        move = Move.O();
}

class MediumBot implements Player {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

  MediumBot()
      : color = const Color(0xFFFBDB45),
        image = Assets.images.medium,
        name = 'Medium Bot',
        move = Move.O();
}

class HardBot implements Player {
  @override
  final ImageProvider image;
  @override
  final Color color;
  @override
  final String name;
  @override
  final Move move;

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
        move = Move.X();
}
