import 'dart:io';

void main(List<String> args) {
  int totalDigit = 0;
  int totalAlphabet = 0;
  int totalSpecial = 0;

  print("Enter the string: ");
  String inputString = stdin.readLineSync()!;
  countCharacters(inputString);

  String s = "i go home 246@#";
  for (int i = 0; i < s.length; i++) {
    var char = s[i];
    if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      totalAlphabet++;
    } else if (RegExp(r'\d').hasMatch(char)) {
      totalDigit++;
    } else {
      if (!RegExp(r'\s').hasMatch(char)) {
        totalSpecial++;
      }
    }
  }

  print("Total Digit: $totalDigit");
  print("Total Alphabet: $totalAlphabet");
  print("Total Special: $totalSpecial");
}
void countCharacters(String s) {
  int alphabets = 0;
  int digits = 0;
  int specialCharacters = 0;

  for (int i = 0; i < s.length; i++) {
    var char = s[i];

    if ((char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) ||
        (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122)) {
      alphabets++;
    } else if (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57) {
      digits++;
    } else {
      specialCharacters++;
    }
  }

  print("Alphabets = $alphabets");
  print("Digits = $digits");
  print("Special characters = $specialCharacters");
}
