void main(List<String> args) {
  List nameList = ["a", "b", "c", "d", "e"];
  // find out "a" index and print it
  final index = nameList.indexWhere((element) => element == "d");
  print("d index is $index");
  final list = nameList.where((element) => element == "e").toList();
  print("list is $list");
  final isThere = nameList.contains("f");
  print("f is in list $isThere");
  final element = nameList.elementAt(2);
  print("index 2 no element is $element");
  final satisfyElement = nameList.firstWhere((element) => element == "d");
  print("first satisfy element is $satisfyElement");
  print("revers list ${nameList.reversed.toList()}");
  final anyThere= nameList.any((element) => element == 'f');
    print("first satisfy element is $satisfyElement");
}
