part of 'players.dart';

abstract class Player {
  final ImageProvider image;
  final Color color;
  final String name;
  final Move move;

  const Player({
    required this.color,
    required this.image,
    required this.move,
    required this.name,
  });
}
