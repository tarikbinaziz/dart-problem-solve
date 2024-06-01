import 'dart:io';

void main(List<String> args) {
  print("Check the number is prime or not");
  stdout.write("Enter the number: ");
  int? number = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print("$number is prime number");
  } else {
    print("$number is not prime number");
  }
}
