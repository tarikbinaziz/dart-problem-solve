import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Welcome to Rock Paper Scissors Game");
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Hello $name");
  print(
      "Enter your choice: please choose between rock,paper and scissors only");
  String? choice = stdin.readLineSync();
  print("Your choice is: $choice");

  print(
      "Enter computer choice: please choose between rock,paper and scissors only");
  final random = Random();
  List chooseList = ["rock", "paper", "scissors"];
  String? computerChoice = chooseList[random.nextInt(chooseList.length)];
  print("Computer choice is: $computerChoice");

  if (choice == computerChoice) {
    print("It's a tie");
  } else if (choice == "rock" && computerChoice == "scissors") {
    print("You win");
  } else if (choice == "rock" && computerChoice == "paper") {
    print("You lose");
  } else if (choice == "paper" && computerChoice == "rock") {
    print("You win");
  } else if (choice == "paper" && computerChoice == "scissors") {
    print("You lose");
  } else if (choice == "scissors" && computerChoice == "paper") {
    print("You win");
  } else if (choice == "scissors" && computerChoice == "rock") {
    print("You lose");
  } else {
    print("Invalid choice");
  }
}
