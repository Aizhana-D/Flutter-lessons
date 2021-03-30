//--1--//
main() {
  List a1 = numberSplit(-11);
  print(a1);
}

List numberSplit(int i4) {
  List array = [];

  if ((i4 % 2) == 0) {
    int y = (i4 ~/ 2);
    array.add(y);
    array.add(y);
  } else {
    int y = (i4 ~/ 2);
    int z = i4 - y;
    if (i4 > 0) {
      array.add(y);
      array.add(z); // если i4 позитивное то четное число будет меньше
    } else {
      array.add(z); //если отрицательное то минус выше
      array.add(y);
    }
  }
  return array;
}
//--end 1--//

//--2--//
main() {
  int a1 = addUp(12);
  print(a1);
}
int addUp(i);{
  int a=0; // пустышка
  for (int =0; i<=i; i++) a=a+i; // сумма всех элементов
  return a;
}
//--2

main() {
  int a1 = addUp(8, 15);
  print(a1);
}

int addUp(int start, int end) {
  int a = 0;
  for (int i = start; i <= end; i++) a = a + i;
  return a;
}
//--end 2--//

//--3--//
main() {
  String input = "15>4";
  print(isTrue(input));
}

bool isTrue(String input) {
  String a = "";
  String c = "";
  String b = "";
  for (int i = 0; i < input.length; i++) {
    String q = input[i];
    if (q == "1" ||
        q == "2" ||
        q == "3" ||
        q == "4" ||
        q == "5" ||
        q == "6" ||
        q == "7" ||
        q == "8" ||
        q == "9" ||
        q == "0") {
      if (c == "")
        a = a + q;
      else
        b = b + q;
    } else {
      c = c + q;
    }
  }

  print("a=" + a + " " + c + " b=" + b);
  int a1 = int.parse(a);
  int b1 = int.parse(b);
  switch (c) {
    case ">":
      {
        if (a1 > b1)
          return true;
        else
          return false;
      }
    case "=":
      {
        if (a1 == b1)
          return true;
        else
          return false;
      }
    case "<":
      {
        if (a1 < b1)
          return true;
        else
          return false;
      }
    default:
      return false;
  }
}

//--end 3--//
