import 'dart:io';
import 'dart:math';

void main() {
  const Step = "Step 3.0";
  print(
      "Welcome to Guess Number Game $Step,let's play!!!\n\nChoose Difficulty");

  print("1)Easy-Random");
  print("2)Hard-Binary");
  stdout.write("Ввод:");
  String inGame = stdin.readLineSync()!;

  print("Choose a number from 1 to 100");
  int t;
  if (inGame == "1") {
    t = ran(1, 100);
  } else {
    t = bin(1, 100);
  }
  print("got it in $t steps!");
}

//--Random
int ran(int a, int b) {
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));

  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + ran(c + 1, b);
  } else if (user == "l") {
    return 1 + ran(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + ran(a, b);
}

//--Binary
int bin(int a, int b) {
  int c = ((b + a) / 2).truncate();
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + bin(c + 1, b);
  } else if (user == "l") {
    return 1 + bin(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + bin(a, b);
}
