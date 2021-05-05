//--1 Задача с массивом чисел
import 'dart:io';

void main() {
  //while (true) { infinity loop
  stdout.write(" Enter a String?");
  var a = stdin.readLineSync()!.split('');

  /// sp means covert to array
  print(a);
  var b = [];
  for (int i = a.length - 1;i >= 0;  i--) //for (var i = 1; i <= 1; i--) //infinity
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

//--**2 Задача с массивом чисел--//
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
//--**end 2 Задача с массивом чисел--//

//--3 Задача с массивом чисел--//
//--lazy way :)
void main3() {
  var l1 = [1, 2, 4];
  var l2 = [1, 3, 4];
  var newMyList = l1 + l2;
  newMyList.sort(); //sort
  print(newMyList);
}
//--end lazy way
//--3
void main() {
  var l1 = [4, 2, 1, 1, 3, 4]; // here used swap and bubble function 
   int a; // need for swap, it's like an empty busket
  var r = l1;
  for (int i = 0; i < r.length - 1; i++) { //каждый элемент берём из листа
    for (int y = i + 1; y < r.length - 1; y++) {// каждый элемент берём но со второго
      // i каждый y со следующим
      if (r[i] > r[y]) {
        //каждый элемент сравниваем со следующим//если больше то меняй //swap or bubbble sort !!! quick sort посмотреть
        //первый сравниваем со вторым
        a = r[i]; // первый элемент в пустышке
        r[i] = r[y]; // второй в первой
        r[y] = a; //пустышку во второй
      }
    }
  }
  print(r); // сорт закончен
}
//--end 3 Задача с массивом чисел--//

//--**4**--//
//-- not correct
void main4() {
  var s = "([)]";

  if (s == "([)]") {

    print("false");
  } else {
    //!!!(== )equally равно;!!! запомнить ошибка если (=)
    print("true");
  } // result is false
}
//end correct
//--** 4 **--
import 'dart:io';

void main41() {
  while (true) {
    print("Enter a string");
    String a = stdin.readLineSync()!;
    List stack = [] ///stack -структура данных, которая следует определенному порядку выполнения операций (ведро)
    bool s = true;
    String temp; //пустышка из вернего элемента ведра напримем:первый элемент должен выйти последним
    for (int i = 0; i < a.length; i++) { // каждый элемент строки
      if (a[i] == "[" || a[i] == "{" || a[i] == "(")
        stack.add(a[i]); //stack first in last out
      else if (a[i] == "]" || a[i] == "}" || a[i] == ")") {
        if (stack.isEmpty) { //если ведро пустое
          s = false;
          break;
        } else {
          temp = stack.removeLast(); //пустышка из вернего элемента ведра 
          if ((temp == "[" && a[i] != "]") ||
              (temp == "{" && a[i] != "}") ||
              (temp == "(" && a[i] != ")")) {
            s = false;
            break;
          }
        }
      }
    }
    if (stack.isNotEmpty) s = false;
    print("result(" + a + ")="+ s.toString()); // bool сделать toString распечатать
  }
}
//--** end 4**--//
