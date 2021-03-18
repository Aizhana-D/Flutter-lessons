//--Number--//
void main() {
  var algebraScore = 5;
  var historyScore = 4;
  var biologyScore = 2;
  double geometryScore = 3.59;
  var gymnasticScore = 5;
  var sum = algebraScore +
      historyScore +
      biologyScore +
      geometryScore +
      gymnasticScore / 5;

  print(algebraScore);
  print(historyScore);
  print(biologyScore);
  print(geometryScore);
  print(gymnasticScore);
  print(
      "sum of scores:${algebraScore + historyScore + biologyScore + geometryScore + gymnasticScore} and the average score:${sum}");
}
//--end Number--//

//--String--//
main1() {
  String name1 = "Dart";
  String name2 = "Flutter";
  String name3 = "Java";
  String name4 = "Pyton";
  String name5 = "C#";
  print(
      "List of popular programming languages:${name1},${name2},${name3},${name4},${name5}!");
}
//--end String--//

//--Boolean--//
main2() {
  bool isStorm = false;
  bool isWinter = true;
  bool isHot = false;
  bool isWind = false;
  bool isRaining = true;

  if (isStorm) {
    print("Storm warning");
  } else {
    print("Snow warning");
  }

  if (isWinter) {
    print("Snow");
  } else {
    print("Rain");
  }

  if (isHot) {
    print("temperature is very high");
  } else {
    print("temperatura is very low");
  }

  if (isWind) {
    print("Wind warning");
  } else {
    print("Snow warning");
  }

  if (isRaining) {
    print("Grab an umbrella!");
  } else {
    print("The sun is shining!");
  }
}
//--end Boolean//

//--List--//
main33() {
  List<String> words = [
    'sky',
    'cloud',
    'tent',
    'tree',
    'falcon',
  ];
  print(words);
}
//--end List--//

//--Map--//
main3() {
  Map details = {
    "Filmname": "StiveJobs",
    "Typeoffilm": "Biographical",
    "Producedyear": "2015",
    "Country": "USA",
    "Filmdirectedby": "Danny Boyle"
  };
  print(
      "${details["Filmname"]} ${details["Typeoffilm"]} ${details["Producedyear"]} ${details["Country"]} ${details["Filmdirectedby"]}");
}
//--end Map --//

//--Runes--//
main4() {
  var heart_symbol = '\u2763';
  var laptop_symbol = '\u1F5B3';
  var raising_hands_symbol = '\u1F64C';
  var woman_symbol = '\u2640';
  var phone_symbol = '\u1F4F1';
  print(heart_symbol);
  print(laptop_symbol);
  print(raising_hands_symbol);
  print(woman_symbol);
  print(phone_symbol);
}
//--end Runes--//
