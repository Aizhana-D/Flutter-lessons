void main() {
  String a = "l";
  String b = "List of l L LLL programmes";

  int counts = 0;
  b = b.toLowerCase().replaceAll(' ', '');
  print(b);
  List c = b.split('');
  // print(c);
  for (var i = 0; i < c.length; i++) {
    if (c[i] == a) {
      counts += 1;
    }
    // print(c[i]);
  }
  // for (int i = 0; i < a.length; i++) {
  //   z = 0;
  //   for (int y = 0; y < b.length; y++) {
  //     if (a[i] == b[y]) z++;
  //   }
  print(counts);
  // }
}
