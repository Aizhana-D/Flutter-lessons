//--1--//
import 'dart:io';

void main1() {
  stdout.write(" Whats is your name?");
  String name = stdin.readLineSync()!;
  stdout.write("How old are you?");
  int old = int.parse(stdin.readLineSync()!);
  print("Your favorite color is $name");
  print("Your age is $old");
}
//--end 1--//

//--2--//
void main2() {
  stdout.write("What is your number?");
  int number = int.parse(stdin.readLineSync()!);

  print("Your number is $number");
  if ((number % 2) == 0) {
    print("Even number");
  } else {
    print("Odd number");
  }
}
//--end 2--//

//--3--//
void main3() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int i = 0; i < a.length - 1; i++) {
    if (a[i] < 5) print("Your number is " + a[i].toString());
  }
}
//--end 3--//
