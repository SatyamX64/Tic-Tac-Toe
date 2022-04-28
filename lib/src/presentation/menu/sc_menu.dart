import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gen/fonts.gen.dart';
import 'package:tic_tac_toe/src/models/players.dart';
import 'package:tic_tac_toe/src/presentation/difficulty/sc_difficulty.dart';
import 'package:tic_tac_toe/src/presentation/rules/sc_rules.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_button.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

import '../game/sc_game.dart';

part 'big_character.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  static const route = '/menu';

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1500),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, -2.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
  ));

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(children: [
          Expanded(
            flex: 6,
            child: Center(
              child: SlideTransition(
                position: _offsetAnimation,
                child: RichText(
                  text: TextSpan(
                    text: '',
                    children: List.generate(
                      _title.length,
                      (index) => _bigCharacter(
                          _title.elementAt(index).character,
                          _title.elementAt(index).color),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GradientButton(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 218, 76, 123),
                  Color.fromARGB(255, 160, 85, 236),
                ],
                stops: [0.1, 1.0],
              ),
              text: 'Single Player',
              onPressed: () {
                Navigator.of(context).pushNamed(DifficultyScreen.route);
              }),
          const SizedBox(
            height: 22,
          ),
          GradientButton(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 227, 75, 141),
                  Color.fromARGB(255, 228, 149, 69),
                ],
                stops: [0.2, 1.0],
              ),
              text: 'Multi Player',
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(GameScreen.route, arguments: PlayerB());
              }),
          const SizedBox(
            height: 22,
          ),
          GradientButton(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 106, 203, 101),
                  Color.fromARGB(255, 59, 154, 243),
                ],
                stops: [0.2, 1.0],
              ),
              text: 'Rules',
              onPressed: () {
                Navigator.of(context).pushNamed(RulesScreen.route);
              }),
          const Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
