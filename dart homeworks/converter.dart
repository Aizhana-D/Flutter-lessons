//-- Converter short way --//
import 'dart:io';

List currency = ["EUR", "USD", "RUB", "KZT"];
main() {
  print( "Курс валют Нацбанка на сегодня :\nДоллар США 84.8 сом\nЕвро 101.4802 сом\nРоссийский рубль 1.1205 сом\nТенге 0.1967 сом");
  while (true) {
    print("1)Хотите обменять другую валюту на сом!");
    print("2)Хотите обменять сом на другую валюту");
    stdout.write("Ввод:"); // 1 or 2
    String inStr = stdin.readLineSync()!;
    converter(inStr);
  }
}
void converter(String choice) {
  choice == "1" ? print("С какой валюты:") : print("Выберите валюту:"); ///choice 
  for (int i = 0; i < currency.length; i++) print(currency[i]);
  stdout.write("Ввод:"); // EUR,USD, RUB,KZT
  String inStr = stdin.readLineSync()!;
  stdout.write("Сколько хотите обменять?"); //amount
  String inAmount = stdin.readLineSync()!;
  double r = 0;
  switch (inStr) {
    case "EUR":
      choice == "1"
          ? r = double.parse(inAmount) * 101.4802
          : r = double.parse(inAmount) / 101.4802;
      print(choice == "1"
          ? "Обмен $inAmount EUR на $r сом"
          : "Обмен $inAmount сом  на $r EUR");
      break;

    case "USD":
      choice == "1"
          ? r = double.parse(inAmount) * 84.8
          : r = double.parse(inAmount) / 84.8;
      print(choice == "1"
          ? "Обмен $inAmount USD на $r"
          : "Обмен $inAmount сом  на $r USD");
      break;

    case "RUB":
      choice == "1"
          ? r = double.parse(inAmount) * 1.1205
          : r = double.parse(inAmount) / 1.1205;
      print(choice == "1"
          ? "Обмен $inAmount RUB на $r"
          : "Обмен $r сом  на $inAmount RUB");
      break;
    case "KZT":
      choice == "1"
          ? r = double.parse(inAmount) * 0.1967
          : r = double.parse(inAmount) / 0.1967;
      print(choice == "1"
          ? "Обмен $inAmount KZT на $r"
          : "Обмен $r сом  на $inAmount KZT");
      break;
  }
}
//-- End Converter short way --//
//--Converter--//
import 'dart:io';

List currency = ["EUR", "USD", "RUB", "KZT"];
main() {
  var rates = new Rates();
  print("Курс валют Нацбанка на сегодня :");
  print(Rates.r1);
  print(Rates.r2);
  print(Rates.r3);
  print(Rates.r4);
  while (true) {
    print("1)Хотите обменять другую валюту на сом!");
    print("2)Хотите обменять сом на другую валюту");
    stdout.write("Ввод:"); // 1 or 2
    String inStr = stdin.readLineSync()!;
    if (inStr == "1") {
      toSom();
    } else {
      fromSom();
    }
  }
}
void toSom() {
  print("С какой валюты:");
  for (int i = 0; i < currency.length; i++) print(currency[i]);
  stdout.write("Ввод:"); // EUR,USD, RUB,KZT
  String inStr = stdin.readLineSync()!;
  stdout.write("Сколько хотите перевести в сомы?"); //amount
  String inAmount = stdin.readLineSync()!;
  double r = 0;
  switch (inStr) {
    case "EUR":
      r = double.parse(inAmount) * 101.4802;
      print("Обмен $inAmount EUR на $r");
      break;

    case "USD":
      r = double.parse(inAmount) * 84.8;
      print("Обмен $inAmount USD на $r");
      break;

    case "RUB":
      r = double.parse(inAmount) * 1.1205;
      print("Обмен $inAmount RUB на $r");
      break;
    case "KZT":
      r = double.parse(inAmount) * 0.1967;
      print("Обмен $inAmount KZT на $r");
      break;
  }
}
void fromSom() {
  print("Выберите валюту:");
  for (int i = 0; i < currency.length; i++) print(currency[i]);
  stdout.write("Ввод:");
  String inStr = stdin.readLineSync()!;
  stdout.write("Сколько хотите перевести?");
  String inAmount = stdin.readLineSync()!;
  double r = 0;
  switch (inStr) {
    case "EUR":
      r = double.parse(inAmount) / 101.4802;
      print("Обмен $r EUR на $inAmount сом");
      break;

    case "USD":
      r = double.parse(inAmount) / 84.8;
      print("Обмен $r USD  на $inAmount сом");
      break;

    case "RUB":
      r = double.parse(inAmount) / 1.1205;
      print("Обмен $r RUB на $inAmount сом");
      break;
    case "KZT":
      r = double.parse(inAmount) / 0.1967;
      print("Обмен $r KZT на $inAmount сом");
      break;
  }
}
class Rates {
  static String r2 = "Доллар США 84.8 сом";
  static String r1 = "Евро 101.4802 сом";
  static String r3 = "Российский рубль 1.1205 сом";
  static String r4 = "Тенге 0.1967 сом";
}
//--End Converter --//