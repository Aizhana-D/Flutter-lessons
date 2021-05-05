import 'dart:io';

void main() {
  print("Choose Difficulty");
  print("1)Easy (1-100)");
  print("2)Hard(1-500)");
  stdout.write("Ввод:"); // 1 or 2
  String inStr = stdin.readLineSync()!;
  if (inStr == "1") {
    toEasy();
  } else {
    toHard();
  }
}

void toEasy() {
  print("Guess a number");
  int t = f1(1, 100);
  print("got it in $t steps!");
}

int f1(int a, int b) {
  int c = ((b + a) / 2).truncate();
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

void toHard() {
  print("Guess a number");
  int t = f2(1, 500);
  print("got it in $t steps!");
}

int f2(int a, int b) {
  int c = ((b + a) / 2).truncate();

  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + f2(c + 1, b);
  } else if (user == "l") {
    return 1 + f2(a, c - 1);
  } else if (user == "y") {
    print("yeaaah ");
    return 1;
  } else
    return 1 + f2(a, b);
}
