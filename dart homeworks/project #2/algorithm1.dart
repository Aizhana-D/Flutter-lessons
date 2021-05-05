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

  print("first algorithm");
  int sum = 0;
  for (int y = 0; y < 100; y++) {
    int i = f3(p[y], 1, 100);
    print("$y  got " + p[y].toString() + " in $i steps!");
    sum = sum + i;
  }
  print("The average number of steps of the guessed number is" "" +
      (sum / 100).toString() +
      "");
}

int f3(int number, int a, int b) {
  int c = ((a + b) / 2).truncate();
  if (c == number)
    return 1;
  else if (c > number)
    return 1 + f3(number, a, c - 1);
  else
    return 1 + f3(number, c + 1, b);
}
