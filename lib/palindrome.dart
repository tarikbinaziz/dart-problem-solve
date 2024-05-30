import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;
  var reverse = input.split("").reversed.join();
  print(input == reverse ? "Palindrome" : "Not palindrome");
}
