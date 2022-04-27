import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/gen/assets.gen.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

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
            const SizedBox(
              height: 64,
            ),
            _Board(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) =>
                    index.isEven ? const _BoardTile.O() : const _BoardTile.X(),
                itemCount: 9,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class _Board extends StatelessWidget {
  const _Board({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF664AC4),
              borderRadius: BorderRadius.circular(16)),
          width: double.maxFinite,
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: child),
    );
  }
}

class _BoardTile extends StatelessWidget {
  const _BoardTile({
    Key? key,
  })  : character = ' ',
        color = Colors.transparent,
        super(key: key);

  const _BoardTile.X({
    Key? key,
  })  : character = 'X',
        color = const Color(0xFFE34951),
        super(key: key);
  const _BoardTile.O({
    Key? key,
  })  : character = 'O',
        color = const Color(0xFFF8CE32),
        super(key: key);

  final String character;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF332367),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(6),
      child: Text(
        character,
        style: GoogleFonts.poppins(
            color: color, fontWeight: FontWeight.w800, fontSize: 90),
      ),
    );
  }
}
