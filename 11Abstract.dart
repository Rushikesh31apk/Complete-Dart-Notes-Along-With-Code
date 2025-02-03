//6. Abstract Classes & Methods
//An abstract class cannot be instantiated and is used as a blueprint.
abstract class Vehicle {
  void start(); // Abstract method
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car is starting...");
  }
}

void main() {
  var myCar = Car();
  myCar.start();
}
