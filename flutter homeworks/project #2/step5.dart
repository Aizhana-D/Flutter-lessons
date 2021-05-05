import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    const Step = "Step 5.0";
    print("Welcome to Guess Number Game $Step,let's play!!!\n\nStart Game");

    print("1)Easy-Random");
    print("2)Hard-Binary");
    stdout.write("Ввод:");
    String inGame = stdin.readLineSync()!;
    if (inGame == "1") {
      toEasy();
    } else {
      toHard();
    }
  }
}

//---------------to Easy-------------------------------------//
void toEasy() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 3; i++) {
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlaye(c, 1, 100);
    user.add(steps);

    steps = laptopPlaye(1, 100);
    laptop.add(steps);
  }
  for (int i = 0; i < 3; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
    return;
  } else
    print("Wiiner is laptop  $laptop");
  return;
}

//--Laptop guess
int laptopPlaye(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlaye(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlaye(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlaye(a, b);
}

//--User guess
int userPlaye(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlaye(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlaye(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//------------------to Hard-------------------------//
void toHard() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 3; i++) {
    print("***== $i round==***");

    var c1 = new Random();
    int c = c1.nextInt(100);
    int steps = userPlayh(c, 1, 100);
    user.add(steps);

    steps = laptopPlayh(1, 100);
    laptop.add(steps);
  }
  for (int i = 0; i < 3; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
    return;
  } else
    print("Wiiner is laptop  $laptop");
  return;
}

//---User guess
int userPlayh(int c, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (c < user) {
    print("l");
    return 1 + userPlayh(c, c + 1, b);
  } else if (c > user) {
    print("g");
    return 1 + userPlayh(c, a, c - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//-----Laptop guess
int laptopPlayh(int a, int b) {
  print("Choose a number from 1 to 100!");
  int c = ((b + a) / 2).truncate();
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlayh(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlayh(a, c - 1);
  } else if (user == "y") {
    print("yeaaah ");
    return 1;
  } else
    return 1 + laptopPlayh(a, b);
}
