void main(List<String> args) {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List c = [];

  for (int i = 0; i < b.length; i++) {
    if (a.contains(b[i])) {
      c.add(b[i]);
    }
  }
  print("Common elements are $c");

 
}
