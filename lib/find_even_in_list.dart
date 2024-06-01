void main(List<String> args) {
  List a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 50, 100];
  List evenList = a.where((x) => x % 2 == 0).toList();
  print(evenList);
}
