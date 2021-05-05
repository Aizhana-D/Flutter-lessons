import 'dart:math';

void main() {
  const Step = "Step 2.0";
  print("Welcome $Step!!!");

  var rand = new Random();

  List p = [100];
  for (int y = 0; y < 99; y++) {
    p.add(rand.nextInt(100) + 1);
  }
  //print(p);

  print("fourth algorithm");
  for (int y = 0; y < 100; y++) {
    int i = f1(p[y]);
    print("got " + p[y].toString() + " in $i steps!");
  }
}

int f1(int a) {
  for (int i = 1; i <= 100; i++) {
    if (i == a) return i;
  }
  return 0;
}
