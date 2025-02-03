// 🚀 Object-Oriented Programming (OOP) in Dart 🚀

// 1. Classes & Objects in Dart
// A class is a blueprint for creating objects, and an object is an instance of a class.

class Person {
  String name = "John";
  int age = 25;

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

// 2. Constructors in Dart
// A constructor is a special method used to initialize an object when it is created.

// (i) Default Constructor
class Car {
  Car() {
    print("Car object created!");
  }
}

// (ii) Parameterized Constructor
class Bike {
  String brand;
  int year;

  Bike(this.brand, this.year); // Parameterized Constructor

  void show() {
    print("Brand: $brand, Year: $year");
  }
}

// (iii) Named Constructor
class Person1 {
  String name;
  int age;

  // Named Constructor
  Person1.named(this.name, this.age);

  void show() {
    print("Name: $name, Age: $age");
  }
}

// (iv) Factory Constructor
// Used when creating an object conditionally or caching instances.
class Singleton {
  static Singleton? _instance;

  Singleton._internal(); // Private constructor

  factory Singleton() {
    _instance ??= Singleton._internal();
    return _instance!;
  }
}

// 3. Getters and Setters
// Getters and setters allow controlled access to private properties.
class Student {
  String _name = "";

  // Getter
  String get name => _name;

  // Setter
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("Name can't be empty");
    }
  }
}

// 4. Static Members
// Static variables and methods belong to the class, not to instances.
class MathUtils {
  static const double pi = 3.1416;

  static double square(double num) {
    return num * num;
  }
}

void main() {
  // Object Instantiation
  var p = Person();
  p.displayInfo();

  var c = Car();

  var myBike = Bike("Toyota", 2022);
  myBike.show();

  var v1 = Person1.named("Alice", 30);
  v1.show();

  var s1 = Singleton();
  var s2 = Singleton();

  print(s1 == s2); // true (same instance)

  var s = Student();
  s.name = "Alice"; // Calling setter
  print(s.name); // Calling getter

  print(MathUtils.pi);
  print(MathUtils.square(5));
}
