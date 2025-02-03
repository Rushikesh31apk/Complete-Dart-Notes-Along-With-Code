//5. Exception Handling in Dart
//Exception handling is crucial in ensuring that your program can handle errors gracefully without crashing.
//In Dart, you can manage exceptions using try, catch, and finally blocks. Here's a breakdown of each concept:
//1. Try-Catch Blocks
//The try block is used to wrap code that might throw an exception.
//If an exception occurs, the catch block handles it.
// try {
//   // Code that may throw an exception
// } catch (e) {
//   // Code to handle the exception
// }

// 2. Finally Block
// The finally block contains code that will always be executed,
// regardless of whether an exception occurred or not. It is typically used for cleanup tasks.
// try {
//   // Code that may throw an exception
// } catch (e) {
//   // Code to handle the exception
// } finally {
//   // Code that will always execute (e.g., cleanup)
// }

//3. Throwing Exceptions
//Dart allows you to throw exceptions manually using the throw keyword.
//This is useful when you want to raise an exception in specific situations.
void checkAge(int age) {
  if (age < 18) {
    throw Exception("Age must be 18 or older!");
  }
  print("Age is valid");
}

//4. Custom Exceptions
//You can create your own custom exceptions by defining a class that extends the built-in Exception class.

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => message;
}

void main() {
  try {
    int result = 10 ~/ 0; // Division by zero
  } catch (e) {
    print("An error occurred: $e"); // Catch the exception
  } finally {
    print("This will always execute");
  }

  try {
    checkAge(15);
  } catch (e) {
    print("Caught error: $e");
  }
  try {
    throw CustomException("Custom error occurred!");
  } catch (e) {
    print(e); // Output the custom exception message
  }
}
