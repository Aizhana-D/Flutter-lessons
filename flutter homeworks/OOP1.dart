//--1--//
void main() {
  var country = new Country();
  String s = country.func();
  print(s);
}

//Определение класса
class Country {
  String countryName = "German";
  String countryClimate = "warm summers and cold winters";

  /*Country() {
    countryName = ";;;";
  }*/

  //Класс функция
  String func() {
    /*print("Country name: ${countryName}");
     print("Germany has a temperate climate: ${countryClimate}");*/
    return this.countryName + " " + this.countryClimate;
  }
}

//--End 1 --//
//--2--//
void main() {
  var car = new Car();
  String s = car.func();
  print(s);
}

//Определение класса
class Car {
  String carName = "Tesla Roadster II";
  String carColor = "black";
  String carPower = "772 hp ";
  String carPrice = "200000"; //  error if use int

  //Класс функция
  String func() {
    /*print("Tesla: ${carName}");
    /print("Tesla: ${carColor}");
    print("Tesla: ${carPower}");
     print("Tesla: ${carPrice}");
    */
    return this.carName +
        "," +
        this.carColor +
        ", " +
        this.carPower +
        ", " +
        this.carPrice;
  }
}
//--End 2 --//
