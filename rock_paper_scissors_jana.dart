import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  var rng = Random();

  while (true) {
    stdout.write('Rock,paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      Move playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print(
          'You chose ${playerMove.name} and the machine chose ${aiMove.name}');
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissors) {
        print("You win");
      } else if (playerMove == Move.rock && aiMove == Move.paper) {
        print("Kaputiaste");
      } else if (playerMove == Move.scissors && aiMove == Move.rock) {
        print("Kaputiaste");
      } else if (playerMove == Move.scissors && aiMove == Move.paper) {
        print("You win");
      } else if (playerMove == Move.paper && aiMove == Move.scissors) {
        print("Kaputiaste");
      } else if (playerMove == Move.paper && aiMove == Move.rock) {
        print("You win");
      }
    } else if (input == 'q') {
      break;
    } else {
      print('thats impossible');
    }
  }
}
