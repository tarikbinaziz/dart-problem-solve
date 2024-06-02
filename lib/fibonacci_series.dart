import 'dart:io';

void main(List<String> args) {
  print("print out fibonacci series");
  stdout.write("Enter the total number that you want to print: ");
  int a = 0;
  int b = 1;
  print(a);
  print(b);
  for (int i = 1; i < 10; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
// import 'dart:io';

// void main() {
//   stdout.write("How many Fibonacci numbers do you want? ");
//   int chosenNumber = int.parse(stdin.readLineSync());

//   List<int> result = fibonacciNumbers(chosenNumber);
//   print(result);
// }

// // Function to calulcate the Fibonacci numbers
// List<int> fibonacciNumbers(int chosenNumber) {
//   List<int> fibList = [1, 1];

//   for (var i = 0; i < chosenNumber; i++) {
//     fibList.add(fibList[i] + fibList[i + 1]);
//   }
//   return fibList;
// }