//--1--//
main1() {
  String addNums = "2, 5, 1, 8, 4";
  List a = addNums.split(',');
  double sum = 0;
  //var sum = 0;
  for (int i = 0; i < a.length; i++) {
    sum += int.parse(a[i]);
  }
  //var sum = x.reduce((init, next) => init + next);
  print(sum);
}
//--1 by reduce
main() {
  var x = "2, 5, 1, 8, 4";
  var a = x.split(',');
  var w;
  w = a.reduce((x, a) => (int.parse(x) + int.parse(a)).toString());
  print(w);

//--End 1--//

//--2--//
main2() {
  String a = "bee";
  var array = a.split("");
  String count = "";
  List array2 = [];
  for (int i = 0; i < array.length; i++) {
    count += a[i]; //посмотреть снова знаки +=...
    array2.add(count);
  }
  print(array2);
}
//--End 2--//

//--3--//
main3() {
  List a = [
    [1, 2, 3],
    [4, 5],
    [6, 7]
  ];
  List z = [];

  for (int i = 0; i < a.length; i++)
    for (int y = 0; y < a[i].length; y++) {
      z.add(a[i][y]);
    }
  print(z);
}
//--End 3--//
