import '../models/move.dart';

enum GameStatus { active, won, tie }

class GameHelper {
  static List<int> availableTiles(List<Move> board) {
    var availableSlots = <int>[];
    for (int i = 0; i < board.length; i++) {
      if (board.elementAt(i) == const Move.empty()) {
        availableSlots.add(i);
      }
    }
    return availableSlots;
  }

  static GameStatus gameStatus(List<Move> board) {
    // check first row
    if (board[0] == board[1] &&
        board[0] == board[2] &&
        board[0] != const Move.empty()) {
      return GameStatus.won;
    }

    // check second row
    if (board[3] == board[4] &&
        board[3] == board[5] &&
        board[3] != const Move.empty()) {
      return GameStatus.won;
    }

    // check third row
    if (board[6] == board[7] &&
        board[6] == board[8] &&
        board[6] != const Move.empty()) {
      return GameStatus.won;
    }

    // check first column
    if (board[0] == board[3] &&
        board[0] == board[6] &&
        board[0] != const Move.empty()) {
      return GameStatus.won;
    }

    // check second column
    if (board[1] == board[4] &&
        board[1] == board[7] &&
        board[1] != const Move.empty()) {
      return GameStatus.won;
    }

    // check third column
    if (board[2] == board[5] &&
        board[2] == board[8] &&
        board[2] != const Move.empty()) {
      return GameStatus.won;
    }

    // check diagonal
    if (board[0] == board[4] &&
        board[0] == board[8] &&
        board[0] != const Move.empty()) {
      return GameStatus.won;
    }

    // check diagonal
    if (board[2] == board[4] &&
        board[2] == board[6] &&
        board[2] != const Move.empty()) {
      return GameStatus.won;
    }

    if (!board.contains(const Move.empty())) {
      return GameStatus.tie;
    }

    return GameStatus.active;
  }
}