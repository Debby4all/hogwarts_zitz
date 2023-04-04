import 'dart:io';
import 'dart:core';

bool winner = false;
bool isXturn = true;
int moveCount = 0;
List<String> cordinates = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<String> combinations = ['012', '048', '036', '147', '246', '258', '345', '678'];
void main() {
  generateBoard();
  playGame();
}

void playGame() {
 print('Welcome, please enter your name');
  String player1 = stdin.readLineSync()!;

  print('Welcome, please enter your name');
  String player2 = stdin.readLineSync()!;

  getnextCharacter(player1, player2); 
}

//check if a combination is true or false for a player (X or 0)
bool checkCombination(String combination, String checkFor) {
  //split the numbers in a list of integers
  List<int> numbers = combination.split('').map((item) {
    return int.parse(item);
  }).toList();
  bool match = false;
  for (final item in numbers) {
    if (cordinates[item] == checkFor) {
      match = true;
    } else {
      match = false;
      break;
    }
  }
  return match;
}
void checkWinner({required String player, required String check}) {
  for (final item in combinations) {
    bool combinationValidity = checkCombination(item, check);
    if (combinationValidity == true) {
      print('$player WON!');
      winner = true;
      break;
    }
  }
}
//get input, check winners
void getnextCharacter(String player1, String player2) {
  //get input from player
  print('Choose Number for ${isXturn == true ? player1 : player2}');
  int number = int.parse(stdin.readLineSync()!);
  //change the value of selected number in cordinates
  cordinates[number - 1] = isXturn ? 'X' : '0';
  //change player turn
  isXturn = !isXturn;
  //increment move count
  moveCount++;
  if (moveCount == 9) {
    winner = true;
    print('DRAW!');
  } else {
    //clear the console
    clearScreen();
    //redraw the board with the new information
    generateBoard();
  }
  //
  //Check Validity for players, declare winner
  //
  //check validity for player X
  checkWinner( player:  player1, check: "X");
  //check validity for player 0
  checkWinner( player: player2, check: "0");

  //until we have a winner, we call current function again
  if (winner == false) getnextCharacter(player1, player2);
}
//clear console screen
void clearScreen() {
  if (Platform.isWindows) {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
//show current state of board
void generateBoard() {
  print('   |   |   ');
  print(' ${cordinates[0]} | ${cordinates[1]} | ${cordinates[2]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${cordinates[3]} | ${cordinates[4]} | ${cordinates[5]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${cordinates[6]} | ${cordinates[7]} | ${cordinates[8]} ');
  print('   |   |   ');
}