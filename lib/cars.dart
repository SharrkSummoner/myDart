class Car {
  int speed = 110;
  String name = "Car";

  void toPrint() {
    print("$speed $name");
  }
}

void registred({int speed = 100, String name = "Car"}) {
  Car newCar = Car();

  newCar.speed = speed;
  newCar.name = name;
  newCar.toPrint();
}
