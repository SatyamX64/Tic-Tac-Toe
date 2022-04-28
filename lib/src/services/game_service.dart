import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/src/models/players.dart';

import '../models/move.dart';
import 'game_helper.dart';

class GameService extends ChangeNotifier {
  bool _mounted = true;
  bool get mounted => _mounted;
  @override
  void dispose() {
    super.dispose();
    _mounted = false;
  }

  void notify() {
    if (mounted) {
      notifyListeners();
    }
  }

  final Player A;
  final Player B;

  late List<Move> _board;

  // true if turn of Player A, else false
  late bool _turnA;

  late bool _playerAWon;
  late bool _playerBWon;

  void initBoard() {
    _board = List.filled(9, const Move.empty());
    _turnA = true;
    _playerAWon = false;
    _playerBWon = false;
    notify();
    if (A is Computer) {
      nextTurn((A as Computer).nextMove(board, A.move));
    }
  }

  Future<void> _dramaticPause({int intensity = 1}) async {
    await Future.delayed(Duration(milliseconds: 600 * intensity));
  }

  Future<void> nextTurn(int index) async {
    assert(index < _board.length);

    // for when user taps on a already filled tile
    if (_board.elementAt(index) != const Move.empty()) {
      if (isComputerTurn) {
        throw ArgumentError('Given tile is already filled');
      } else {
        return;
      }
    }

    _board[index] = _turnA ? A.move : B.move;
    notify();
    var gameOver = isGameOver();
    if (gameOver) {
      await _dramaticPause();
      notify();
      return;
    }
    _turnA = !_turnA;

    if (A is Computer && _turnA) {
      int pos = (A as Computer).nextMove(board, A.move);
      await _dramaticPause();
      await nextTurn(pos);
      return;
    }
    if (B is Computer && !_turnA) {
      int pos = (B as Computer).nextMove(board, B.move);
      await _dramaticPause();
      await nextTurn(pos);
      return;
    }
  }

  List<Move> get board => _board;

  bool get turnA => _turnA;

  bool get playerAWon => _playerAWon;
  bool get playerBWon => _playerBWon;

  bool get gameOver => isGameOver();

  bool get isComputerTurn =>
      (A is Computer && turnA) || (B is Computer && !turnA);

  GameService({required this.A, required this.B}) {
    initBoard();
  }

  /// returns true if any player wins or game ties
  bool isGameOver() {
    // check first row
    var gameStatus = GameHelper.didSomeoneWin(board);
    if (gameStatus == null) return false;
    if (gameStatus == A.move) {
      _playerAWon = true;
      _playerBWon = false;
    } else if (gameStatus == B.move) {
      _playerAWon = false;
      _playerBWon = true;
    } else if (gameStatus == const Move.empty()) {
      _playerAWon = false;
      _playerBWon = false;
    }
    return true;
  }
}
