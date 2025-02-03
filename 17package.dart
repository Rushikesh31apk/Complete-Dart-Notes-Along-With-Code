// 9. Dart Packages and Libraries
// This program demonstrates how to work with Dart packages and libraries,
// including importing standard libraries, creating custom libraries,
// using external packages, and exploring Dart's standard libraries.

//import 'package:http/http.dart' as http; // Import the HTTP package
import 'dart:math'; // Importing the dart:math library for random number generation and math functions
import 'dart:io'; // Importing the dart:io library for file operations and I/O
import 'dart:convert'; // Importing dart:convert for JSON encoding/decoding

// 1. Importing Libraries
void importLibrariesExample() {
  var random = Random(); // Create an instance of Random from dart:math
  print(
      'Random number: ${random.nextInt(100)}'); // Generate a random number between 0 and 100

  // File operations using dart:io
  var file = File('example.txt');
  file.writeAsStringSync(
      'Hello, Dart!'); // Writing a string to a file synchronously
  print('File written successfully!');

  // JSON encoding and decoding using dart:convert
  var jsonString = '{"name": "Alice", "age": 30}';
  var jsonMap = jsonDecode(jsonString);
  print('Name: ${jsonMap['name']}');
  print('Age: ${jsonMap['age']}');
}

// 2. Creating and Using Custom Libraries
// Create a custom library with functions for addition and subtraction
// In a real project, these functions would be in a separate file (e.g., math_operations.dart).

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

// 3. Using Custom Libraries
void customLibraryExample() {
  var sum = add(5, 3);
  var difference = subtract(9, 4);
  print('Sum: $sum'); // Output: Sum: 8
  print('Difference: $difference'); // Output: Difference: 5
}

// 4. Using External Packages (pub.dev)
// To use external packages, you must add them to the pubspec.yaml file and run 'dart pub get'.
// Example: Using the 'http' package to make an HTTP request.
// The 'http' package must be added in pubspec.yaml like:
// dependencies:
//   http: ^0.14.0

// Future<void> externalPackageExample() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     print('Data fetched successfully: ${response.body}');
//   } else {
//     print('Failed to fetch data');
//   }
// }

// 5. Dart Standard Libraries
// 5a. dart:io - File Operations
void dartIoExample() {
  var file = File('example.txt');
  file.writeAsStringSync('Hello from dart:io!');
  print('File written with dart:io');
}

// 5b. dart:math - Random Numbers and Math Functions
void dartMathExample() {
  var radians = pi / 4; // Get pi from dart:math
  var cosine = cos(radians);
  print('Cosine of $radians radians: $cosine');
}

// 5c. dart:convert - JSON Encoding and Decoding
void dartConvertExample() {
  var jsonString = '{"name": "Alice", "age": 30}';
  var jsonMap = jsonDecode(jsonString);
  print('Name: ${jsonMap['name']}');
  print('Age: ${jsonMap['age']}');
}

// Main function to run all examples
void main() async {
  // 1. Import Libraries Example
  importLibrariesExample();

  // 2. Custom Libraries Example
  customLibraryExample();

  // 3. External Package Example
  //await externalPackageExample(); // Note: async function

  // 4. Standard Library Examples
  dartIoExample();
  dartMathExample();
  dartConvertExample();
}
