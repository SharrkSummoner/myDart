import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

String myString = "";

class Car {
  int speed = 110;
  String name = "Car";

  void toPrint() {
    if (kDebugMode) {
      print("$speed $name");
      for (int i = 0; i < 100; i++) {
        myString += "$speed $name \n";
      }
    }
  }

  void toPrint1() {
    if (kDebugMode) {
      print(speed);
    }
    if (kDebugMode) {
      print(name);
    }
  }

  void toPrintSpeed() {
    if (kDebugMode) {
      print(speed);
    }
  }

  void toPrintName() {
    if (kDebugMode) {
      print(name);
    }
  }
}

void registred([int speed = 0, String name = ""]) {
  Car newCar = Car();

  newCar.speed = speed;
  newCar.name = name;
  newCar.toPrint();
  newCar.toPrint1();
  newCar.toPrintSpeed();
  newCar.toPrintName();
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    registred(150, "Volvo");
    double width = MediaQuery.of(context).size.width;
    print(width);

    if (width > 460) {
      return Scaffold(
        body: Center(
          child: SingleChildScrollView(
              child: Text(
            myString,
            style: const TextStyle(fontSize: 24),
          )),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Mememeow"),
        ),
        endDrawer: Container(
          width: width * 0.7,
          color: Colors.purple,
          child: Column(
            children: const [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("adas"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("aw"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("asd"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("asd"),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Text(
            myString,
            style: const TextStyle(fontSize: 10),
          )),
        ),
      );
    }
  }
}
