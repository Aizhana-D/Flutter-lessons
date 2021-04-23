import 'dart:io';

void main() {
  const Step = "Step 1.0";
  print(
      "Welcome to Guess Number Game $Step,let's play!!!"); // recursion that uses binary search
  print("Choose a number from 1 to 100");
  int t = f1(1,
      100); //created a function (with a condition) which 1 + f1 (c, b); returns
  print("got it in $t steps!");
}

int f1(int a, int b) {
  int c = ((b + a) / 2)
      .truncate(); // truncate Returns an int without decimal points.
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + f1(c + 1, b);
  } else if (user == "l") {
    return 1 + f1(a, c - 1);
  } else if (user == "y") {
    print("yeaaah ");
    return 1;
  } else
    return 1 + f1(a, b);
}
