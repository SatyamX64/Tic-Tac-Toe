import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';
import 'package:tic_tac_toe/src/services/game_service.dart';
import 'package:provider/provider.dart';
import 'board.dart';
import 'player_card.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const route = '/game';

  @override
  Widget build(BuildContext context) {
    final service = context.watch<GameService>();

    Widget getBoard() {
      if (service.gameOver) {
        if (service.playerAWon) {
          return WinBoard(
            name: service.playerAWon ? service.A.name : service.B.name,
            onTap: () {
              service.initBoard();
            },
          );
        } else if (service.playerBWon) {
          return WinBoard(
            name: service.playerAWon ? service.A.name : service.B.name,
            onTap: () {
              service.initBoard();
            },
          );
        } else {
          return TieBoard(
            onTap: () {
              service.initBoard();
            },
          );
        }
      }
      return GameBoard(
        service.board,
        onTap: (index) {
          if (service.isComputerTurn) {
            return;
          }
          service.nextTurn(index);
        },
      );
    }

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
                    player: service.A,
                    turn: service.turnA && !service.gameOver,
                  ),
                  PlayerCard(
                    player: service.B,
                    turn: !service.turnA && !service.gameOver,
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
