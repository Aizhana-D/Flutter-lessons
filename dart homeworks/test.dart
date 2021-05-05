main() {
  DateTime s = DateTime(2021, 01, 01);
  DateTime birthday = DateTime(2021, 04, 10);
  List wishes = [
    "Big Love",
    "Money",
    "Strong health",
    "Many travels",
    "All the best"
  ];
  for (int i = 0; i < 365; i++) {
    s = s.add(new Duration(days: 1));
    if (s == birthday) {
      print("Happy birthday Dastan!!!" +
          ", " +
          s.toString() +
          ',' +
          "Wish you:" +
          wishes.toString());
    }
  }
}
