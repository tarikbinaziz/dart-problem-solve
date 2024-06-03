void main(List<String> args) {
  Map<String, int> alphabetValue = {
    "a": 5,
    "b": 10,
    "c": 15,
    "D": 20,
    "e": 25,
    "f": 30,
    "g": 35,
    "h": 40,
    "i": 45,
    "j": 50,
    "k": 55,
    "l": 60,
    "m": 65,
    "n": 70,
    "O": 75,
    "p": 80,
    "q": 85,
    "r": 90,
    "s": 95,
    "t": 100,
    "u": 105,
    "v": 110,
    "w": 115,
    "x": 120,
    "y": 125,
    "z": 130,
  };
  String str = "Good";
  double total = 0;

  for (int i = 0; i < str.length; i++) {
    var char = alphabetValue.containsKey(str[i]);
    print(char);
    if (char == true) {
      total = total + alphabetValue[str[i]]!;
    }
  }
  print("total is $total");
}
