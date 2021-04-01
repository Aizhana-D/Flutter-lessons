//--1--//
main() {
  List a = ([1, 3, 2, 6, 4, 8]);
  List x = [];

  for (int i = 0; i < a.length; i++) {
    if (a[i].isEven && i.isEven) {
      // a[i] (переменная)  && i.isEven(индексы)
      x.add(a[i]);
    }
  }
  print(x);
}
//--End 1--//

//--2--//
main() {
  List a = ([1, 2, "a", "b", "123"]);
  List b = [];
  for (int i = 0; i < a.length - 1; i++) {
    if ((a[i] is int)) b.add(a[i]);
  }
  print(b);
}
//--End 2--//

//--3--//
main() {
  var b = (["Google", "Apple", "Microsoft"]);
  b.sort();
  print(b);
  //--3
  main() {
    List b = (["Google", "Apple", "Microsoft"]);

    String a; // временное хранилище

    for (int i = 0; i < b.length; i++) {
      for (int y = i + 1; y < b.length; y++) {
        //
        if (b[i].toString().length > b[y].toString().length) {
          // swap and bubble function
          a = b[i].toString();
          b[i] = b[y];
          b[y] = a;
        }
      }
    }
    print(b);
  }
} //--End 3--//
