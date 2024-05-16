import 'dart:io';

void main(List<String> args) {
  stdout.write("What's your name? ");
  String? name = stdin.readLineSync();
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print("Printing all elements less than 5");
  List result = List.from(a.where((element) => element < 5));
  print("Result is $result");
}
