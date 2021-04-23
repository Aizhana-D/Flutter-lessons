import 'dart:io';
import 'dart:math';

main() {
  const Step = "Step 4.0";
  print("Welcome to Guess Number Game $Step,let's play!!!");

  while (true) {
    print("1)Start Game");
    print("2)Choose rounds");
    print("3)Exit");
    stdout.write("Ввод:");
    int userInput = 0;
    try {
      userInput = int.parse(stdin.readLineSync()!);
    } on FormatException {
      print("That isn't a recognized command, please try again!");
      continue;
    }
    if (userInput == 1) {
      toStartgame();
    } else if (userInput == 2) {
      toRounds();
    } else if (userInput == 3) {
      break;
    } else {
      print("That isn't a recognized a number, please try again!");
    }
  }
}

// g=greater; l=low; y=yes;
//--------------****************By default ************************--------------//
void toStartgame() {
  List user = [];
  List laptop = [];
  int r = 0; // r =result

  for (int i = 1; i <= 3; i++) {
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays(c, 1, 100);
    user.add(steps);

    steps = laptopPlays(1, 100);
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
int laptopPlays(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays(a, b);
}

//--User guess

int userPlays(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--------------****************Choose round 1 -10 ************************--------------//
void toRounds() {
  print("2)Choose round from 1 to 10:");
  stdout.write("Ввод:");
  String inGame = stdin.readLineSync()!;
  if (inGame == "1") {
    toRound1();
  } else if (inGame == "2") {
    toRound2();
  } else if (inGame == "3") {
    toRound3();
  } else if (inGame == "4") {
    toRound4();
  } else if (inGame == "5") {
    toRound5();
  } else if (inGame == "6") {
    toRound6();
  } else if (inGame == "7") {
    toRound7();
  } else if (inGame == "8") {
    toRound8();
  } else if (inGame == "9") {
    toRound9();
  } else {
    toRound10();
  }
}

//--Round 1---------------------------------------------//
void toRound1() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 1; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays1(c, 1, 100);
    user.add(steps);

    steps = laptopPlays1(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 1; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays1(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays1(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays1(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays1(a, b);
}

//--User guess
int userPlays1(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays1(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays1(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-2**********************************************//
void toRound2() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 2; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));

    int steps = userPlays2(c, 1, 100);
    user.add(steps);

    steps = laptopPlays2(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 2; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays2(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays2(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays2(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays2(a, b);
}

//--User guess
int userPlays2(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays2(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays2(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-3---------------------------------------------//
void toRound3() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 3; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays3(c, 1, 100);
    user.add(steps);

    steps = laptopPlays3(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 3; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays3(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays3(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays3(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays3(a, b);
}

//--User guess
int userPlays3(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays3(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays3(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-4**********************************************//
void toRound4() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 4; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));

    int steps = userPlays4(c, 1, 100);
    user.add(steps);

    steps = laptopPlays4(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 4; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays4(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays4(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays4(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays4(a, b);
}

//--User guess
int userPlays4(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays4(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays4(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-5 ---------------------------------------------//
void toRound5() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 5; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays5(c, 1, 100);
    user.add(steps);

    steps = laptopPlays5(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 5; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays5(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays5(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays5(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays5(a, b);
}

//--User guess
int userPlays5(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays5(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays5(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-6**********************************************//
void toRound6() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 6; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));

    int steps = userPlays6(c, 1, 100);
    user.add(steps);

    steps = laptopPlays6(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 6; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays6(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays6(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays6(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays6(a, b);
}

//--User guess
int userPlays6(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays6(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays6(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-7---------------------------------------------//
void toRound7() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 7; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays7(c, 1, 100);
    user.add(steps);

    steps = laptopPlays7(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 7; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays7(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays7(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays7(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays7(a, b);
}

//--User guess
int userPlays7(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays7(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays7(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-8**********************************************//
void toRound8() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 8; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));

    int steps = userPlays8(c, 1, 100);
    user.add(steps);

    steps = laptopPlays8(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 8; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays8(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays8(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays8(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays8(a, b);
}

//--User guess
int userPlays8(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays8(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays8(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-9---------------------------------------------//
void toRound9() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 9; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));
    int steps = userPlays9(c, 1, 100);
    user.add(steps);

    steps = laptopPlays9(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 9; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays9(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays9(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays9(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays9(a, b);
}

//--User guess
int userPlays9(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays9(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays9(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}

//--Round 1-10**********************************************//
void toRound10() {
  List user = [];
  List laptop = [];
  int r = 0;

  for (int i = 1; i <= 10; i++) {
//
    print("***== $i round==***");
    var rand = new Random();
    int c = (rand.nextInt(100 + 1));

    int steps = userPlays10(c, 1, 100);
    user.add(steps);

    steps = laptopPlays10(1, 100);
    laptop.add(steps);
  }

  for (int i = 0; i < 10; i++) {
    if (user[i] < laptop[i]) r++;
  }
  if (r >= 2) {
    print("Winner is user $user");
  } else
    print("Wiiner is laptop  $laptop");
}

//--Laptop guess
int laptopPlays10(int a, int b) {
  print("Choose a number from 1 to 100!");
  var rand = new Random();
  int c = a + (rand.nextInt(b - a + 1));
  print("is it $c ?");
  String user = stdin.readLineSync()!;
  if (user == "g") {
    return 1 + laptopPlays10(c + 1, b);
  } else if (user == "l") {
    return 1 + laptopPlays10(a, c - 1);
  } else if (user == "y") {
    print("yeaaah");
    return 1;
  } else
    return 1 + laptopPlays10(a, b);
}

//--User guess
int userPlays10(int number, int a, int b) {
  print("Enter your guess:");
  int user = int.parse(stdin.readLineSync()!);
  if (number < user) {
    print("l");
    return 1 + userPlays10(number, number + 1, b);
  } else if (number > user) {
    print("g");
    return 1 + userPlays10(number, a, number - 1);
  } else {
    print("yeaaah");
    return 1;
  }
}
