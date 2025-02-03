//5. Polymorphism in Dart
//Polymorphism allows using different classes through a common interface.
class Shape {
  void draw() {
    print("Drawing a shape");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print("Drawing a rectangle");
  }
}

void main() {
  Shape s1 = Circle();
  Shape s2 = Rectangle();

  s1.draw();
  s2.draw();
}
