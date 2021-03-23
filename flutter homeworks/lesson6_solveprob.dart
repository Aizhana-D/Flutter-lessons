//--1 Задача с массивом чисел
import 'dart:io';

void main() {
  //while (true) { infinity loop
  stdout.write(" Enter a String?");
  var a = stdin.readLineSync()!.split('');

  /// sp means covert to array
  print(a);
  var b = [];
  for (int i = a.length - 1;
      i >= 0;
      i--) //for (var i = 1; i <= 1; i--) //infinity
    //{  add
    b.add(a[i]);
  // added a to b //
  //}
  print(b.join(""));

  /// join means covert array to string
}

//--1 by reverse
void main() {
  var input = [1, 2, 3];
  var reversed = input.reversed;
  print(reversed.toString());
  //toList [] Result:(3, 2, 1)
}

//--1 without stdout and stdin
void main() {
  var a = 123;
  for (var i = 3; i >= 1; i--) //for (var i = 1; i <= 1; i--) ///infinity
    print([i]);
  //Result: vertical [3] [2] [1]
}
//--end 1--//

//--2--//
void main() {
  List a = [2, 7, 11, 15];
  int b = 9;

  for (int i = 0; i < a.length; i++) {
    for (int y = i + 1; y < a.length; y++) {
      // (i)2+(1)7!!!
      if ((a[i] + a[y]) == b) print("[${i} , ${y}]");
      // why does it print all options? print("Because a[0] + a[1] == 9, we return ${i} , ${y}]");
    }
  }
}

//--2
void main() {
  List a = [3, 2, 4];
  int b = 6;
  for (int i = 0; i < a.length; i++) {
    //!!!why -1 and 1
    for (int y = i + 1; y < a.length; y++) {
      if ((a[i] + a[y]) == b) print("[${i} , ${y}]");
    }
  }
}
//--end 2--//

//--3 Задача с массивом чисел--//
void main3() {
  var l1 = [1, 2, 4];
  var l2 = [1, 3, 4];
  var newMyList = l1 + l2;
  newMyList.sort(); //sort
  print(newMyList);
}

//--3
void main31() {
  var l1 = [];
  var l2 = [];
  var newMyList = l1 + l2;
  print(newMyList);
}
//--end 3 Задача с массивом чисел--//

//--4--//
void main4() {
  var s = "()";

  if (s == "()") {
    //!!!(== )equally равно;!!! запомнить ошибка если (=)
    print("true");
  } else {
    print("false");
  } // result is true
}

//--4
void main() {
  var s = "([)]";

  if (s == "([)]") {
    //
    print("false");
  } else {
    //!!!(== )equally равно;!!! запомнить ошибка если (=)
    print("true");
  } // result is false
}

//--4  to figer out why shows false ""== ,=! "when use the wrong variables
// what is the difference??
void main() {
  var s = "(]";

  if (s != "(]") {
    //
    //!!!(== )equally равно;!!! запомнить ошибка если (=)
    print("true");
  } else {
    print("false");
  } // result is true
}

//-- end 4--//
