void main(List<String> arguments) {
  String sentence = "my name is 10^#";

  int digitcount = 0;
  int alphabetcount = 0;
  int signCount = 0;
  for (int i = 0; i < sentence.length; i++) {
    if (RegExp(r"\d").hasMatch(sentence[i])) {
      digitcount++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(sentence[i])) {
      alphabetcount++;
    } else if (!RegExp(r'\s').hasMatch(sentence[i])) {
      signCount++;
    }
  }

  List a = [1, 2, 3, 4, 5, 6];

  List b = a.map((e) => e + 2).toList();
  print("b list is $b");

  print("total digit $digitcount");
  print("total digit $alphabetcount");
  print("total sign $signCount");

  var f = [1, 3, 6, 462, 5, 9, 4, 82, 5, 3, 7, 34];
  List m = f.where((element) => element > 6).toList();
  print("main list is $m");
  
}
