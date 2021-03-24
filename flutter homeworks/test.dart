void main() {
  var l1 = [4, 2, 1, 1, 3, 4]; // here used swap and bubble function
  int a; // need for swap, it's like an empty busket
  var r = l1;
  for (int i = 0; i < r.length - 1; i++) {
    //каждый элемент берём из листа
    for (int y = i + 1; y < r.length - 1; y++) {
      // каждый элемент берём но со второго
      // i каждый y со следующим
      if (r[i] > r[y]) {
        //каждый элемент сравниваем со следующим//если больше то меняй //swap or bubbble sort !!! quick sort посмотреть
        //первый сравниваем со вторым
        a = r[i]; // первый элемент в пустышке
        r[i] = r[y]; // второй в первой
        r[y] = a; //пустышку во второй
      }
    }
  }
  print(r); // сорт закончен
}
