//--Solve problems--//
main() {
  int a = highestDigit("379");
  print("The higest digit is ${a}");
}

int highestDigit(String a) { //convert to String 
  int x = 0;
  for (int i = 0; i < a.length; i++) {
    if (int.parse(a[i]) > x) x = int.parse(a[i]);
  }
  return x;
}

//--Solve Problem universal
import 'dart:io';

main() {
  print("Enter numbers");
  int a = int.parse(stdin.readLineSync()!);
  a = highestDigit(a.toString());
  print("The higest digit is ${a}");
}

int highestDigit(String a) {
  int x = 0;
  for (int i = 0; i < a.length; i++) {
    if (int.parse(a[i]) > x) x = int.parse(a[i]);
  }
  return x;
}
//--End Solve problems--//
