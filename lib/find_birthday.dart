import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> birthDayList = [
    {
      "name": "mehedi",
      "birthday": "2000-01-01",
    },
    {
      "name": "akif",
      "birthday": "2002-02-02",
    },
    {
      "name": "joinal",
      "birthday": "2023-03-05",
    },
    {
      "name": "riad",
      "birthday": "2002-05-02",
    },
    {
      "name": "rahim",
      "birthday": "2024-05-05",
    },
  ];
  stdout.write(" Who's birthday do you want to look up? ");
  String? name = stdin.readLineSync();
  String? birthdayName = "";
  for (int i = 0; i < birthDayList.length; i++) {
    if (birthDayList[i]["name"] == name) {
      birthdayName = birthDayList[i]["birthday"];
      break;
    }
  }
  if (birthdayName != "") {
    print("$name's birthday is $birthdayName");
  }
}
