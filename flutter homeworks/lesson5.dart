//-- 1  вариант Байкешки Python--//
void main1() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List c = [];
  for (int i = 0; i < a.length - 1; i++) {
    if (b.contains(a[i]) && !c.contains(a[i])) {
      c.add(a[i]);
    }
  }
  print(c);
}

//-- end 1 вариант Байкешки--//

//-- 2 --//
void main2() {
  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List b = [];
  for (int i = 0; i < a.length - 1; i++) {
    if ((a[i] % 2) == 0) b.add(a[i]);
  }
  print(b);
  // for (int i = 0; i < b.length - 1; i++) {
  // print(b[i]);
  // }
}
//-- end 2//

//-- 3--//

void main3() {
  String a = "l L";
  String b = "List of programmes";

  int z = 0;
  for (int i = 0; i < a.length; i++) {
    z = 0;
    for (int y = 0; y < b.length; y++) {
      if (a[i] == b[y]) z++;
    }
    print(z);
  }
}
//--end 3--//

//-- 3 вариант Байкешки Python --//
void main() {
  String a = "l";
  String b = "List of programmes";

  int counts = 0;
  b = b.toLowerCase().replaceAll(' ', '');
  print(b);
  List c = b.split('');
  print(c);
  print(counts);
}
// end 3 вариант Байкешки//
