import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/gen/assets.gen.dart';
import 'package:tic_tac_toe/src/presentation/game/sc_game.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

part 'difficulty_option.dart';

class DifficultyScreen extends StatelessWidget {
  const DifficultyScreen({Key? key}) : super(key: key);

  static const route = '/difficulty';
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Difficulty',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(
                      width: 174,
                      child: Divider(
                        color: Colors.amber,
                        thickness: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _DifficultyOption(
              secondary: const Color(0xFFE06EF9),
              primary: const Color(0xFF5B4DD0),
              title: 'Easy Bot',
              image: Assets.images.easy,
            ),
            const SizedBox(
              height: 30,
            ),
            _DifficultyOption(
              secondary: const Color(0xFFDE6536),
              primary: const Color(0xFFFBDB45),
              title: 'Medium Bot',
              image: Assets.images.medium,
            ),
            const SizedBox(
              height: 30,
            ),
            _DifficultyOption(
              secondary: const Color(0xFF3F88B1),
              primary: const Color(0xFFE56871),
              title: 'Difficult Bot',
              image: Assets.images.hard,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
