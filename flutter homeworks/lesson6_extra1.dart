//--1--//
//1_1//
void main() {
  int number = 60;
  print("in 60 min ${number * 60} seconds");
}
//1_2//
import 'dart:io';

void main1() {
  stdout.write("enter a minutes?");
  int number = int.parse(stdin.readLineSync()!);
  print("in ${number} min ${number * 60} seconds");
}
//--end-- 1//

//--2--//
void main2() {
  List array = [1, 3, 4, 5, 6];
  print(" first element is ${array[0]} ");
  //or (||) print(array.first);
}
//--end 2--//

//--3--//
void main3() {
  print("Привет "); //print( “ Привет  ’ )
}
//--3--//

//--4--//
void main4() {
  bool todayisRaining = true;
  if (todayisRaining) {
    print("Переменная имеет значение ${todayisRaining = true}");
  } else {
    print("Переменная имеет значение ${todayisRaining = false}");
  }
}
//--end 4--//

//--5--//
void main5() {
  int number = 60;

  if (number >= 0) {
    print("true");
  } else {
    print("false");
  }
}
//--end 5--//

