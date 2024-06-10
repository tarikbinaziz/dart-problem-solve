import 'dart:io';

void main(List<String> args) {
  print("show largest no");
  while(true){
      stdout.write("Enter the 1st number and enter '0' to exit: ");
    int? number1 = int.parse(stdin.readLineSync()!);
    if(number1==0 ){
      print("Thank you, see you again");
      break;
    }
    stdout.write("Enter the 2md number: ");
    int? number2 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the 3rd number: ");
    int? number3 = int.parse(stdin.readLineSync()!);

    if (number1 > number2 && number1 > number3) {
      print("$number1 is largest");
    } else if (number2 > number1 && number2 > number3) {
      print("$number2 is largest");
    } else {
      print("$number3 is largest");
    }

  }

}