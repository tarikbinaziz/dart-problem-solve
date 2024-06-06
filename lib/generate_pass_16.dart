import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Welcome to password generator");

  while (true) {
    stdout.write("Enter the desired password length or type 'exit' to quit: ");
    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == 'exit') {
      print("Goodbye!");
      break;
    }
    int length = int.tryParse(input)!;
    String password = generatePassword(length);
    print("password is $password");
    String strength = evaluatePasswordStrength(password);
    print("Password strength is: $strength");
  }
}

String generatePassword(int length) {
  String upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lowerCase = "abcdefghijklmnopqrstuvwxuz";
  String number = "1234567890";
  String specialChart = "!@#\$%^&*()_+";
  String passGenerator = upperCase + lowerCase + number + specialChart;
  final random = Random();
  String generatePass = '';
  List<String> list = passGenerator.split("").toList();

  for (int i = 0; i < length; i++) {
    int index = random.nextInt(list.length);
    generatePass += list[index];
  }
  return generatePass;
}

String evaluatePasswordStrength(String password) {
  bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
  bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
  bool hasDigit = password.contains(RegExp(r'\d'));
  bool hasSpecialChar = password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  int length = password.length;

  int score = 0;
  if (hasUpperCase) score++;
  if (hasLowerCase) score++;
  if (hasDigit) score++;
  if (hasSpecialChar) score++;
  if (length >= 8) score++;

  if (score >= 4) {
    return 'Strong';
  } else if (score == 3) {
    return 'Normal';
  } else {
    return 'Weak';
  }
}
