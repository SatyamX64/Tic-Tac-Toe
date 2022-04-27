import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac_toe/src/models/players.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({required this.player, required this.turn, Key? key})
      : super(key: key);

  final Player player;

  final bool turn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: turn ? Lottie.asset('assets/images/down.json') : null,
        ),
        const SizedBox(
          height: 6,
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 0.75,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                border: turn ? Border.all(color: Colors.white) : null,
                borderRadius: BorderRadius.circular(12),
              ),
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: player.color),
                    height: 64,
                    width: 64,
                    padding: const EdgeInsets.all(12),
                    child: Image(image: player.image),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    player.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 44,
                    child: player.move.widget,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          child: Text(
            turn ? 'Your Turn' : '',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
