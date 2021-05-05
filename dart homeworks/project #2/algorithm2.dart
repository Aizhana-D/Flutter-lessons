import 'dart:math';

void main() {
  const Step = "Step 2.0";
  print("Welcome $Step!!!");

  var rand = new Random();
  List p = [];
  for (int y = 0; y < 100; y++) {
    p.add(rand.nextInt(100) + 1);
  }
  // print(p);

  print("second algorithm");
  int sum = 0;
  for (int y = 0; y < 100; y++) {
    int i = userPlays(p[y], 1, 100);
    print("got " + p[y].toString() + " in $i steps!");
    sum = sum + i;
  }
  print("The average number of steps of the guessed number is" +
      (sum / 100).toString() +
      "");
}

//--algo
int userPlays(int number, int a, int b) {
  if (a == b) {
    return 1;
  }
  var rand = new Random();
  int user = (rand.nextInt(b - a) + a);

  if (number < user) {
    //print("l");
    return 1 + userPlays(number, a, user - 1);
  } else if (number > user) {
    // print("g");
    return 1 + userPlays(number, user + 1, b);
  } else {
    // print("yeaaah");
    return 1;
  }
}
