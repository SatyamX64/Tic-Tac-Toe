import '../models/move.dart';

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

  static Move? didSomeoneWin(List<Move> board) {
    // check first row
    if (board[0] == board[1] &&
        board[0] == board[2] &&
        board[0] != const Move.empty()) {
      return board[0];
    }

    // check second row
    if (board[3] == board[4] &&
        board[3] == board[5] &&
        board[3] != const Move.empty()) {
      return board[3];
    }

    // check third row
    if (board[6] == board[7] &&
        board[6] == board[8] &&
        board[6] != const Move.empty()) {
      return board[6];
    }

    // check first column
    if (board[0] == board[3] &&
        board[0] == board[6] &&
        board[0] != const Move.empty()) {
      return board[6];
    }

    // check second column
    if (board[1] == board[4] &&
        board[1] == board[7] &&
        board[1] != const Move.empty()) {
      return board[1];
    }

    // check third column
    if (board[2] == board[5] &&
        board[2] == board[8] &&
        board[2] != const Move.empty()) {
      return board[2];
    }

    // check diagonal
    if (board[0] == board[4] &&
        board[0] == board[8] &&
        board[0] != const Move.empty()) {
      return board[0];
    }

    // check diagonal
    if (board[2] == board[4] &&
        board[2] == board[6] &&
        board[2] != const Move.empty()) {
      return board[2];
    }

    if (!board.contains(const Move.empty())) {
      return const Move.empty();
    }

    return null;
  }

  static bool isGameOver(List<Move> board) {
    var move = didSomeoneWin(board);
    if (move != null) {
      return true;
    } else {
      return false;
    }
  }
}
