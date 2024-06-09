import 'dart:io';

void main() {
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  String currentPlayer = 'X';

  while (true) {
    printBoard(board);

    print('Player $currentPlayer, enter your move (row and column): ');
    var input = stdin.readLineSync();
    if (input == null || input.isEmpty) continue;
    var parts = input.split(' ');
    if (parts.length != 2) continue;

    var row = int.tryParse(parts[0]);
    var col = int.tryParse(parts[1]);
    if (row == null || col == null) continue;

    if (row < 0 || row >= 3 || col < 0 || col >= 3 || board[row][col] != ' ') {
      print('Invalid move, try again.');
      continue;
    }

    board[row][col] = currentPlayer;

    if (checkWinner(board, currentPlayer)) {
      printBoard(board);
      print('Player $currentPlayer wins!');
      break;
    }

    if (checkDraw(board)) {
      printBoard(board);
      print('The game is a draw!');
      break;
    }

    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }
}

void printBoard(List<List<String>> board) {
  for (var row in board) {
    print(row.join(' | '));
    print('-' * 9);
  }
}

bool checkWinner(List<List<String>> board, String player) {
  // Check rows
  for (var row in board) {
    if (row.every((cell) => cell == player)) {
      return true;
    }
  }

  // Check columns
  for (var col = 0; col < 3; col++) {
    if (board[0][col] == player &&
        board[1][col] == player &&
        board[2][col] == player) {
      return true;
    }
  }

  // Check diagonals
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    return true;
  }

  if (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
    return true;
  }

  return false;
}

bool checkDraw(List<List<String>> board) {
  for (var row in board) {
    if (row.contains(' ')) {
      return false;
    }
  }
  return true;
}
