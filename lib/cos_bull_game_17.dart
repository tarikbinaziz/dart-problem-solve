import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Welcome to cows and bulls game");
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Hello $name");

  int cows = 0;
  int bulls = 0;

  final random = Random();
  String randomNumber = "";

  for (int i = 0; i < 4; i++) {
    final number = random.nextInt(10);
    randomNumber += number.toString();
  }
  print("randomNumber $randomNumber");
  var randomNumberList = randomNumber.split("").toList();

  for (int i = 0; i < randomNumberList.length; i++) {
    stdout.write("Guess number at position ${i + 1}: ");
    String? guessNumber = stdin.readLineSync();
    if (guessNumber == randomNumberList[i]) {
      cows++;
    } else {
      bulls++;
    }
  }
  print('Cows: $cows');
  print('Bulls: $bulls');
  if (cows == 4) {
    print("You win");
  } else {
    print("You lose");
  }
}
