/*
🔁 "Iterating" mane holo — list er moddhe ekta ekta kore item niye kaj kora.
Bengali te bolle:
"List er prottek item er upor ek ek kore loop chalano."
*/
void main(List<String> args) {
  List a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // How to iterate a list

  // 1. Using for loop
  for (int i = 0; i < a.length; i++) {
    print(a[i]);
  }
  // 2. Using for-in loop
  for (var item in a) {
    print(item);
  }
  // 3. Using forEach method
  for (var item in a) {
    print(item);
  }
  // 4. Using map method
  //   ✅ 4. map()
  // 🔹 Kokhon use korbo?
  // Jokhon list er item gulo ke modify kore notun ekta list banate chai.
  a.map((item) {
    print(item);
  });
  // 5. Using where method
  //   ✅ 5. where()
  // 🔹 Kokhon use korbo?
  // Jokhon list theke kichu specific condition match kore item gulo filter korte chai.
  a.where((item) {
    print(item);
    return item > 5;
  });
  // 6. Using every method
  //   ✅ 6. every()
  // 🔹 Kokhon use korbo?
  // Jokhon check korte chai je sob item ki ekta condition satisfy kore?
  a.every((item) {
    print(item);
    return item > 5;
  });
  // 7. Using any method
  //   ✅ 7. any()
  // 🔹 Kokhon use korbo?
  // Jokhon check korte chai je ekta item o jodi condition satisfy kore — tahole true dibe.

  a.any((item) {
    print(item);
    return item > 5;
  });
  // 8. Using reduce method
  //   ✅ 8. reduce()
  // 🔹 Kokhon use korbo?
  // List er element gulo ke ekta value te combine korar jonno.
  a.reduce((value, element) {
    print(value);
    return value + element;
  });
  // 9. Using fold method
  //   ✅ 9. fold()
  // 🔹 Kokhon use korbo?
  // reduce() er moto, but eikhane initial value dite pari.
  int total = a.fold<int>(
    10,
    (prev, item) => prev + item as int,
  ); // 10 + 1 + 2 + 3 = 16

  // 10. Using expand method
  //   ✅ 10. expand()
  // 🔹 Kokhon use korbo?
  // Jokhon list er proti item ke aro list e convert kore flat list banate chai.

  a.expand((element) {
    print(element);
    return [element];
  });
  // 11. Using toList method
  //   ✅ 11. toList()
  // 🔹 Kokhon use korbo?
  // Jokhon kono iterable ke normal list e convert korte chai.
  a.toList();

  // 12. Using toSet method
  //   ✅ 12. toSet()
  // 🔹 Kokhon use korbo?
  // Jokhon list theke duplicate remove kore unique value chai.
  a.toSet();

  // 14. Using toString method
  //   ✅ 14. toString()
  // 🔹 Kokhon use korbo?
  // Jokhon list ke string e convert korte chai (print or log korar jonno).
  a.toString();
}
