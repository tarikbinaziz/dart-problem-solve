import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Welcome to guess the number game");
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Hello $name");
  bool isWin = false;

  while (isWin == false) {
    stdout.write("choose a number between 1 to 100: ");
    int? chooseNumber = int.parse(stdin.readLineSync()!);
    print("Your choose number is $chooseNumber");
    int? chooseNumberTrackList = 0;
    final random = Random();
    int guessNumber = random.nextInt(1);
    print("guessNumber $guessNumber");
    if (chooseNumber == guessNumber) {
      print("You win");
      print("You took $chooseNumberTrackList times");
      isWin = true;
    } else if (chooseNumber > guessNumber) {
      print("You choose to high");
      chooseNumberTrackList++;
    } else {
      print("You choose to low");
      chooseNumberTrackList++;
    }
  }
}
