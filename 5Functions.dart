//Functions in Dart 🚀
/*
A function is a block of reusable code that performs a specific task. 
Dart functions help in modularizing code, making it easier to debug, reuse, and maintain
*/

//1. Function Definition & Calling
void greet() {
  // Function definition
  print("Hello, Dart!");
}

//2. Return Types in Dart
int add(int a, int b) {
  return a + b;
}

//3. Function Parameters in Dart
//(i) Positional Parameters --> These parameters are required and must be passed in the correct order.
void greet1(String name, int age) {
  print("Hello $name, you are $age years old.");
}

//(ii) Named Parameters {} --> Named parameters are passed by name and can be optional.
void greet2({String? name, int? age}) {
  print("Hello ${name ?? "Guest"}, Age: ${age ?? 0}");
}

//(iii) Default Parameter Values --> Used when the user doesn’t provide values.
void greet3({String name = "Guest", int age = 18}) {
  print("Hello $name, Age: $age");
}

//5. Arrow Functions (=>)
int square(int num) => num * num;

//6. Higher-Order Functions
//A function that takes another function as a parameter or returns a function.
void applyFunction(int a, int b, Function operation) {
  print("Result: ${operation(a, b)}");
}

//7. First-Class Functions
//Dart treats functions as first-class objects,
//meaning they can be assigned to variables or stored in data structures.
int add1(int a, int b) => a + b;

//8. Recursive Functions
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  greet(); // Function call
  int sum = add(5, 10);
  print("Sum: $sum");
  greet1("Alice", 25); // Correct order
  greet2(name: "Alice", age: 25);
  greet2(age: 30); // Omitting name
  greet3(); // Uses default values
  greet3(name: "Alice"); // Default age

  //4. Anonymous Functions (Lambda Functions) -->
  //A function without a name is called an anonymous function.
  var square = (int num) {
    return num * num;
  };

  print("Square: ${square(4)}");
  print("Square: ${square(4)}");
  applyFunction(5, 3, (a, b) => a + b);
  var operation = add1; // Assigning function to a variable
  print("Sum: ${operation(5, 3)}");
  print("Factorial: ${factorial(5)}");
}
