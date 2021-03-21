//--1--//
void main() {
  int a = 44;
  int b = 30;

  if ((a + b) < 100) {
    print("true");
  } else {
    print("false");
  }
}
//--end 1--//

//--2--//
void main2() {
  bool yes = true;
  bool no = false;

  if (yes && no) {
    print(true);
  } else {
    print(false);
  }
}

//--
void main22() {
  bool yes = true;
  bool no = false;

  if (yes || no) {
    print(true);
  } else {
    print(false);
  }
}

//
void main23() {
  bool yes = true;
  bool no = false;

  if (yes != no) {
    print(true);
  } else {
    print(false);
  }
}
//--end 2--//

//--3--//
void main3() {
  int start = 1;
  int end = 10;
  List array = [];

  for (int i = start + 1; i < end; i++) {
    //start+1 means start from the 2nd number, i < end do not add the last number
    array.add(i);
  }
  print(array);
}
//--end 3--//
