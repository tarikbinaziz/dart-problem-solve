void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> newList = [];
  newList.add(a.first);
  newList.add(a.last);
  print(newList);
}
// import 'dart:math';

// void main() {
//   // Initialize the random list
//   final random = Random();
//   List<int> randList = List.generate(10, (_) => random.nextInt(100));

//   // Pass it to the function
//   print(randList);
//   print(newList(randList));
// }

// // Function that returns the first and the last element of given list
// List<int> newList(List<int> initialList) {
//   return [initialList.first, initialList.last];
// }