void main(List<String> args) {
  var myList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  print(myList);

  // Accessing elements
  var index5 = myList[5];
  print(index5);

  // Assigning elements
  myList[5] = 100;
  print(myList);

  // Adding elements
  myList.add(200);
  print(myList);
  myList.addAll([300, 400]);
  print(myList);

  // Removing elements
  myList.remove(13);
  print(myList);
  myList.removeAt(5);
  print(myList);
  myList.removeLast();
  print(myList);
  myList.removeRange(0, 3);
  print(myList);
  myList.removeWhere((element) => element > 100);
  print("removeWhere: $myList");
  myList.clear();
  print(myList);

  // Immutable List with final keyword
  final immutableList = [1, 2, 3, 4, 5];
  print(immutableList);
  // if you final keyword & try to reassign the immutable list to another list,
  //it will throw an error
  // immutableList = [6, 7, 8, 9, 10]; // This will throw an error

  // But you can still modify the elements of the list
  immutableList[0] = 10;
  print(immutableList);
  immutableList.add(6);
  print(immutableList);

  // Immutable List with const keyword
  const immutableList2 = [1, 2, 3, 4, 5];
  print(immutableList2);
  // if you const keyword & try to reassign the immutable list to another list,
  //it will throw an error
  // immutableList2 = [6, 7, 8, 9, 10]; // This will throw an error

  /// But, you cannot modify the elements of the list
  // immutableList2[0] = 10; // This will throw an error
  // immutableList2.add(6); // This will throw an error




  
}
