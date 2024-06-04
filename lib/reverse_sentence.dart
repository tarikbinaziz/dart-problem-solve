import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a sentence: ");
  String? sentence = stdin.readLineSync();
  String? reverse = sentence!.split(" ").reversed.join(" ");
  print(reverse);
}