import 'package:tic_tac_toe/src/models/players.dart';

import '../models/move.dart';

class GameService {
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

    if (A is Computer) {
      nextTurn((A as Computer).nextMove(board));
    }
  }

  void nextTurn(int index) async {
    assert(index < _board.length);

    // for when user taps on a already filled tile
    if (_board.elementAt(index) != const Move.empty()) {
      return;
    }

    _board[index] = _turnA ? A.move : B.move;
    _turnA = !_turnA;

    var gameOver = checkGameOver();

    if (gameOver) {
      return;
    }

    if (A is Computer && _turnA) {
      int pos = (A as Computer).nextMove(board);
      // await Future.delayed(const Duration(seconds: 1));
      nextTurn(pos);
    }
    if (B is Computer && !_turnA) {
      int pos = (B as Computer).nextMove(board);
      // await Future.delayed(const Duration(seconds: 1));
      nextTurn(pos);
    }
  }

  List<Move> get board => _board;

  bool get turnA => _turnA;

  bool get playerAWon => _playerAWon;
  bool get playerBWon => _playerBWon;

  bool get gameOver => checkGameOver();

  bool get isComputerTurn =>
      (A is Computer && turnA) || (B is Computer && !turnA);

  GameService({required this.A, required this.B}) {
    initBoard();
  }

  // sets and returns true if any player wins
  bool checkGameOver() {
    // check first row
    if (board[0] == board[1] &&
        board[0] == board[2] &&
        board[0] != const Move.empty()) {
      if (board[0] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check second row
    if (board[3] == board[4] &&
        board[3] == board[5] &&
        board[3] != const Move.empty()) {
      if (board[3] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check third row
    if (board[6] == board[7] &&
        board[6] == board[8] &&
        board[6] != const Move.empty()) {
      if (board[6] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check first column
    if (board[0] == board[3] &&
        board[0] == board[6] &&
        board[0] != const Move.empty()) {
      if (board[0] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check second column
    if (board[1] == board[4] &&
        board[1] == board[7] &&
        board[1] != const Move.empty()) {
      if (board[1] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check third column
    if (board[2] == board[5] &&
        board[2] == board[8] &&
        board[2] != const Move.empty()) {
      if (board[2] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check diagonal
    if (board[0] == board[4] &&
        board[0] == board[8] &&
        board[0] != const Move.empty()) {
      if (board[0] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    // check diagonal
    if (board[2] == board[4] &&
        board[2] == board[6] &&
        board[2] != const Move.empty()) {
      if (board[2] == A.move) {
        _playerAWon = true;
      } else {
        _playerBWon = true;
      }
      return true;
    }

    if (!board.contains(const Move.empty())) {
      return true;
    }

    return false;
  }
}
