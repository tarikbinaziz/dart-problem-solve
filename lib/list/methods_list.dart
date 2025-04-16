import 'dart:convert';

void main(List<String> args) {
  List a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(a);

  /// List Methods
  ///
  // 1. add
  // add method is used to add a single element to the end of the list.
  // add() method দিয়ে list-এর শেষে একটি element যোগ করা হয়।
  a.add(11);
  print("add: $a");

  // 2. addAll
  // addAll method is used to add multiple elements to the end of the list.
  // addAll() method দিয়ে list-এর শেষে একাধিক element একসাথে যোগ করা যায়।
  a.addAll([12, 13, 14]);
  print("addAll: $a");

  // 3. insert
  // insert method is used to add a single element at a specific index in the list.
  // The first parameter is the index where you want to insert the element,
  // and the second parameter is the element you want to insert.
  // The index should be between 0 and the length of the list.
  // If the index is less than 0 or greater than the length of the list,
  // it will throw an error.
  // insert() method দিয়ে list-এর মধ্যে নির্দিষ্ট index-এ একটি element যোগ করা হয়।
  a.insert(0, 0);
  print("insert: $a");

  // 4. insertAll
  // insertAll method is used to add multiple elements at a specific index in the list.
  // The first parameter is the index where you want to insert the elements,
  // and the second parameter is the list of elements you want to insert.
  // The index should be between 0 and the length of the list.
  // If the index is less than 0 or greater than the length of the list,
  // it will throw an error.
  // insertAll() method দিয়ে list-এর মধ্যে নির্দিষ্ট index-এ একাধিক element যোগ করা হয়।
  a.insertAll(1, [1, 2, 3]);
  print("insertAll: $a");

  // 5. remove
  // remove method is used to remove the first occurrence of a specific element from the list.
  // If the element is not found in the list, it will do nothing.
  // remove() method দিয়ে list-এর মধ্যে থেকে একটি element মুছে ফেলা হয়।
  a.remove(1);
  print("remove: $a");
  // 6. removeAt
  // removeAt method is used to remove the element at a specific index in the list.
  // The index should be between 0 and the length of the list - 1.
  // If the index is less than 0 or greater than the length of the list - 1,
  // it will throw an error.
  // removeAt() method দিয়ে list-এর মধ্যে থেকে নির্দিষ্ট index-এ একটি element মুছে ফেলা হয়।
  a.removeAt(0);
  print("removeAt: $a");
  // 7. removeLast
  // removeLast method is used to remove the last element from the list.
  // If the list is empty, it will throw an error.
  // removeLast() method দিয়ে list-এর মধ্যে থেকে শেষ element মুছে ফেলা হয়।
  a.removeLast();
  print("removeLast: $a");
  // 8. removeRange
  // removeRange method is used to remove a range of elements from the list.
  // The first parameter is the start index (inclusive) and the second parameter is the end index (exclusive).
  // The start index should be between 0 and the length of the list - 1,
  // and the end index should be between the start index and the length of the list.
  // If the start index is less than 0 or greater than the length of the list - 1,
  // or if the end index is less than the start index or greater than the length of the list,
  // it will throw an error.
  // removeRange(start, end) method একটি নির্দিষ্ট range-এর element list থেকে মুছে ফেলে।
  a.removeRange(0, 2);
  print("removeRange: $a");
  // 9. removeWhere
  // removeWhere method is used to remove all elements that satisfy a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, the element will be removed from the list.
  // removeWhere() method এমন element গুলো list থেকে মুছে ফেলে যেগুলো condition পূরণ করে।
  a.removeWhere((element) => element > 5);
  print("removeWhere: $a");

  // 10. clear
  // clear method is used to remove all elements from the list.
  // After calling this method, the list will be empty.
  // clear() method list-এর সব element মুছে ফেলে।
  a.clear();
  print("clear: $a");

  // 11. sort
  // sort method is used to sort the elements of the list in ascending order.
  // The sort method uses the compareTo method of the elements to determine the order.
  // If the elements do not implement the Comparable interface,
  // you can pass a custom comparison function as a parameter.
  // sort() method list-এর elements গুলোকে ascending order এ সাজায়।
  a = [5, 3, 1, 4, 2];
  print("Unsorted: $a");
  a.sort();
  print("Sorted: $a");

  // 12. shuffle
  // shuffle method is used to shuffle the elements of the list randomly.
  // The shuffle method uses the Random class to generate random numbers.
  // You can pass a Random object as a parameter to the shuffle method.
  // If you do not pass a Random object, it will use the default Random object.
  // shuffle() method list-এর elements গুলোর position র‍্যান্ডমলি পরিবর্তন করে।
  a.shuffle();
  print("Shuffled: $a");

  // 13. sublist
  // sublist method is used to get a sublist of the list.
  // The first parameter is the start index (inclusive) and the second parameter is the end index (exclusive).
  // The start index should be between 0 and the length of the list - 1,
  // and the end index should be between the start index and the length of the list.
  // If the start index is less than 0 or greater than the length of the list - 1,
  // or if the end index is less than the start index or greater than the length of the list,
  // it will throw an error.
  // sublist(start, end) method মূল list থেকে একটি নির্দিষ্ট অংশ return করে।
  a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var sublist = a.sublist(2, 5);
  print("Sublist: $sublist");

  // 14. indexOf
  // indexOf method is used to get the index of the first occurrence of a specific element in the list.
  // The parameter is the element you want to find.
  // If the element is not found in the list, it will return -1.
  // indexOf(element) method নির্দিষ্ট element এর প্রথম index return করে।
  var index = a.indexOf(5);
  print("Index of 5: $index");

  // 15. lastIndexOf
  // lastIndexOf method is used to get the index of the last occurrence of a specific element in the list.
  // The parameter is the element you want to find.
  // If the element is not found in the list, it will return -1.
  // lastIndexOf(element) method নির্দিষ্ট element এর সর্বশেষ index return করে।
  var lastIndex = a.lastIndexOf(5);
  print("Last index of 5: $lastIndex");

  // 16. contains
  // contains method is used to check if the list contains a specific element.
  // The parameter is the element you want to check.
  // If the element is found in the list, it will return true.
  // If the element is not found in the list, it will return false.
  // contains(element) method চেক করে list-এ element টি আছে কিনা।
  var contains = a.contains(5);
  print("Contains 5: $contains");

  // 17. indexWhere
  // indexWhere method is used to get the index of the first element that satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, the index of that element will be returned.
  // If no element satisfies the condition, it will return -1.
  // indexWhere() method যেই index-এ প্রথম element condition পূরণ করে, সেটি return করে।
  var indexWhere = a.indexWhere((element) => element > 5);
  print("Index where element > 5: $indexWhere");

  // 18. lastIndexWhere
  // lastIndexWhere method is used to get the index of the last element that satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, the index of that element will be returned.
  // If no element satisfies the condition, it will return -1.
  // lastIndexWhere() method যেই index-এ শেষ element condition পূরণ করে, সেটি return করে।
  var lastIndexWhere = a.lastIndexWhere((element) => element > 5);
  print("Last index where element > 5: $lastIndexWhere");

  // 19. firstWhere
  // firstWhere method is used to get the first element that satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, that element will be returned.
  // If no element satisfies the condition, it will throw an error.
  // firstWhere() method প্রথম element return করে যেটা condition fulfill করে।
  var firstWhere = a.firstWhere((element) => element > 5);
  print("First where element > 5: $firstWhere");

  // 20. lastWhere
  // lastWhere method is used to get the last element that satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, that element will be returned.
  // If no element satisfies the condition, it will throw an error.
  // lastWhere() method শেষ element return করে যেটা condition fulfill করে।
  var lastWhere = a.lastWhere((element) => element > 5);
  print("Last where element > 5: $lastWhere");

  // 21. singleWhere
  // singleWhere method is used to get the only element that satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, that element will be returned.
  // If no element satisfies the condition, it will throw an error.
  // If more than one element satisfies the condition, it will throw an error.
  // singleWhere() method শুধুমাত্র একটা element return করে যেটা condition fulfill করে।
  var singleWhere = a.singleWhere((element) => element > 5);
  print("Single where element > 5: $singleWhere");

  // 22. any
  // any method is used to check if any element satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true for any element, it will return true.
  // If no element satisfies the condition, it will return false.
  // any() method চেক করে list-এর যেকোনো একটি element condition fulfill করে কিনা।
  var any = a.any((element) => element > 5);
  print("Any element > 5: $any");

  // 23. every
  // every method is used to check if every element satisfies a specific condition.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true for every element, it will return true.
  // If any element does not satisfy the condition, it will return false.
  // every() method চেক করে list-এর সবগুলো element condition fulfill করে কিনা।
  var every = a.every((element) => element > 5);
  print("Every element > 5: $every");

  // 24. map
  // map method is used to apply a function to every element in the list and return a new list.
  // The parameter is a function that takes an element as a parameter and returns a new element.
  // The new list will contain the elements returned by the function.
  // map() method list-এর প্রতিটি element এর উপর একটি function apply করে নতুন Iterable return করে।
  var map = a.map((element) => element * 2);
  print("Map: $map");

  // 25. where
  // where method is used to filter the elements that satisfy a specific condition and return a new list.
  // The parameter is a function that takes an element as a parameter and returns a boolean value.
  // If the function returns true, the element will be included in the new list.
  // If the function returns false, the element will be excluded from the new list.
  // where() method condition fulfill করা elements return করে নতুন Iterable হিসেবে।
  var where = a.where((element) => element > 5);
  print("Where: $where");

  // 26. reduce
  // reduce method is used to reduce the elements in the list to a single value.
  // The parameter is a function that takes two elements as a parameter and returns a new element.
  // The new element will be the result of applying the function to the two elements.
  // The first element in the list will be used as the initial value.
  // reduce() method list-এর সব element কে একত্রিত করে একটি single value return করে।

  var reduce = a.reduce((value, element) => value + element);
  print("Reduce: $reduce");

  // 27. fold
  // fold method is used to reduce the elements in the list to a single value.
  // The parameter is a function that takes two elements as a parameter and returns a new element.
  // The new element will be the result of applying the function to the two elements.
  // The initial value will be used as the initial value.
  // fold(initialValue, function) method দিয়ে list reduce করা হয় একটি single value তে, initial value দিয়ে শুরু করে।
  var fold = a.fold(0, (value, element) => (value + element) as int);
  print("Fold: $fold");

  // 28. expand
  // expand method is used to expand the elements in the list to a new list.
  // The parameter is a function that takes an element as a parameter and returns a new list.
  // The new list will contain the elements returned by the function.
  // expand() method list-এর প্রতিটি element কে একাধিক element এ রূপান্তর করে এবং নতুন Iterable return করে।
  var expand = a.expand((element) => [element, element * 2]);
  print("Expand: $expand");

  // 29. toSet
  // toSet method is used to convert the list to a set.
  // A set is a collection of unique elements.
  // If the list contains duplicate elements, they will be removed in the set.
  // toSet() method list কে set এ convert করে, যেটা unique elements রাখে।
  var toSet = a.toSet();
  print("To Set: $toSet");

  // 30. toList
  // toList method is used to convert the set to a list.
  // A list is a collection of elements that can contain duplicate elements.
  // If the set contains duplicate elements, they will be removed in the list.
  // toList() method set কে list এ রূপান্তর করে।
  var toList = toSet.toList();
  print("To List: $toList");

  // 31. toString
  // toString method is used to convert the list to a string.
  // The string will contain the elements of the list separated by commas.
    // toString() method list কে string format এ convert করে।
  var toString = a.toString();
  print("To String: $toString");

  // 32. toJson
  // toJson method is used to convert the list to a JSON string.
  // The JSON string will contain the elements of the list in JSON format.
  // The JSON string will be a valid JSON string.
    // toJson() এর মতো effect পাওয়ার জন্য list কে string হিসেবে encode করা যায়।
  var toJson = a.toString();
  print("To Json: $toJson");

  // 33. fromJson
  // fromJson method is used to convert a JSON string to a list.
  // The JSON string will contain the elements of the list in JSON format.
  // The JSON string will be a valid JSON string.
    // fromJson করার জন্য JSON string কে decode করে list এ পরিণত করা যায়।
  var fromJson = json.decode(toJson);
  print("From Json: $fromJson");
}
