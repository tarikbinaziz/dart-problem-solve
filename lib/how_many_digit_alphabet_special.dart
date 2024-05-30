void main(List<String> args) {
  int totalDigit = 0;
  int totalAlphabet = 0;
  int totalSpecial = 0;

  String s = "i go home 246@#";
  for (int i = 0; i < s.length; i++) {
    var char = s[i];
    if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      totalAlphabet++;
    } else if (RegExp(r'\d').hasMatch(char)) {
      totalDigit++;
    } else {
      if (!RegExp(r'\s').hasMatch(char)) {
        totalSpecial++;
      }
    }
  }

  print("Total Digit: $totalDigit");
  print("Total Alphabet: $totalAlphabet");
  print("Total Special: $totalSpecial");
}
