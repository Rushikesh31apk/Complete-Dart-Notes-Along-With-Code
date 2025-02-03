//3. Inheritance in Dart
//Inheritance allows a class (child class) to reuse properties and methods from another class (parent class).
//(i) Extending Classes (extends)
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog barks");
  }
}

void main() {
  var dog = Dog();
  dog.makeSound(); // Inherited method
  dog.bark();
}
