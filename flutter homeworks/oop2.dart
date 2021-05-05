//--1--//
void main1() {
  Country std = new Country("German", "warm summer and cold winter");

  print(std.name + "," + std.climate);
}

//Определение класса
class Country {
  String name;
  String climate;
  Country(this.name, this.climate);
}
//--End 1--//

//--2--//
void main2() {
  var car = new Car("Tesla Roadster", "black", "772km/h", 200000);
  print(car.name +
      "," +
      car.color +
      "," +
      car.power +
      "," +
      car.price.toString() +
      "\$"); // car.price.toString because of int
  print(Car.carSt);
}

//Определение класса
class Car {
  static String carSt = "Camry";
  String name;
  String color;
  String power;
  int price;
  Car(this.name, this.color, this.power, this.price);
}
//--End 2--//
