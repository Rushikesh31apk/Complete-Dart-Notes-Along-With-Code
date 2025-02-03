//4. Method Overriding (@override)
//A child class can override a method from the parent class using @override.
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

void main() {
  var cat = Cat();
  cat.makeSound(); // Overridden method
}
