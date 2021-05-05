//--1--//
//-- string
void main() {
  String command = "open";
  switch (command) {
    case "open":
      print("command is open");
      break;

    case "closed":
      print("сommand is closed");
      break;

    default:
      print("command is not recognized");
  }
}
//--1 use bool
import 'dart:io';

void main() {
  while (true) {
    print("Enter an even number");
    int number = int.parse(stdin.readLineSync()!);
    bool r = false;
    if ((number % 2) == 0) r = true;

    switch (r) {
      case true:
        print("Yes, it is an even number");
        break;
      case false:
        print("Please, choose an even number ");
        break;
    }
  }
}
//--1 use int
import 'dart:io';

void main() {
  while (true) {
    print("Enter a week day");
    int number = int.parse(stdin.readLineSync()!);

    switch (number) {
      case 1:
        print("is Monday");
        break;
      case 2:
        print("is Tuesday");
        break;
      case 3:
        print("is Wednesday");
        break;
      case 4:
        print("is Thursday");
        break;
      case 5:
        print("is Friday");
        break;
      case 6:
        print("is Saturday");
        break;
      case 7:
        print("is Sunday");
        break;
      default:
        print("Error");
    }
  }
}
//--end 1--//

//--2--//
void main() {
  String b = "Ankara";
  List array = b.split('');
  print(array);
  String c; // пустышка
  String a = "a"; // найти букву а
  int i = 0; // каждый элемент b
  int y = 0; // сколько раз нашёл
  while (i < array.length) {
    // проходимся по каждому элементу
    //
    c = array[i]; // закидываем в пустышку

    if (c == a) y++;
    i++; // по каждому прошлись
  }
  print(y);
}
//--end 2--//

