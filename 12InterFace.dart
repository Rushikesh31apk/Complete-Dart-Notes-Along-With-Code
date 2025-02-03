//7. Interfaces & Mixins in Dart
//Dart does not have a interface keyword. Instead, a class can be used as an interface using implements.

//(i) Implementing Interfaces (implements)
//Unlike extends, implements forces you to override all methods.
class Printer {
  void printDocument() {
    print("Printing document...");
  }
}

class Scanner {
  void scanDocument() {
    print("Scanning document...");
  }
}

// Implements forces full implementation
class AllInOnePrinter implements Printer, Scanner {
  @override
  void printDocument() {
    print("All-in-One Printer is printing...");
  }

  @override
  void scanDocument() {
    print("All-in-One Printer is scanning...");
  }
}

///(ii) Using Mixins (with)
//Mixins allow a class to reuse code without inheritance.
mixin CanFly {
  void fly() {
    print("Flying high...");
  }
}

mixin CanSwim {
  void swim() {
    print("Swimming...");
  }
}

class Duck with CanFly, CanSwim {}

void main() {
  var device = AllInOnePrinter();
  device.printDocument();
  device.scanDocument();
  var d = Duck();
  d.fly();
  d.swim();
}
