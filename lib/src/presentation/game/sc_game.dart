import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';
import 'package:tic_tac_toe/src/services/game_service.dart';

import 'board.dart';
import 'player_card.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({required this.service, Key? key}) : super(key: key);

  final GameService service;
  static const route = '/game';

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Widget getBoard() {
    if (widget.service.gameOver) {
      if (widget.service.playerAWon) {
        return WinBoard(
          name: widget.service.playerAWon
              ? widget.service.A.name
              : widget.service.B.name,
          onTap: () {
            setState(() {
              widget.service.initBoard();
            });
          },
        );
      } else if (widget.service.playerBWon) {
        return WinBoard(
          name: widget.service.playerAWon
              ? widget.service.A.name
              : widget.service.B.name,
          onTap: () {
            setState(() {
              widget.service.initBoard();
            });
          },
        );
      } else {
        return TieBoard(
          onTap: () {
            setState(() {
              widget.service.initBoard();
            });
          },
        );
      }
    }
    return GameBoard(
      widget.service.board,
      onTap: (index) {
        // print(widget.service.isComputerTurn);
        if (widget.service.isComputerTurn) {
          return;
        }
        setState(() {
          widget.service.nextTurn(index);
        });
      },
    );
  }

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
                  PlayerCard(
                    player: widget.service.A,
                    turn: widget.service.turnA && !widget.service.gameOver,
                  ),
                  PlayerCard(
                    player: widget.service.B,
                    turn: !widget.service.turnA && !widget.service.gameOver,
                  ),
                ],
              ),
            ),
            getBoard(),
          ],
        ),
      ),
    );
  }
}
