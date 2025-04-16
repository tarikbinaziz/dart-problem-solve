void main(List<String> args) {
  /// List properties
  var myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // get the total number of elements in the list,use "length" property
  print("Length: ${myList.length}");
  // get the first element of the list, use "first" property
  print("First: ${myList.first}");
  // get the last element of the list, use "last" property
  print("Last: ${myList.last}");
  // get the reversed list, use "reversed" property
  print("Reversed: ${myList.reversed}");
  // get the sorted list, use "sort" method
  myList = [5, 3, 1, 4, 2];
  print("Unsorted: $myList");
  myList.sort();
  print("Sorted: $myList");
  // check if the list is empty, use "isEmpty" property
  print("Is Empty: ${myList.isEmpty}");
  // check if the list is not empty, use "isNotEmpty" property
  print("Is Not Empty: ${myList.isNotEmpty}");
}
