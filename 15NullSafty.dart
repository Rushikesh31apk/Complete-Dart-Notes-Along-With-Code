// 7. Null Safety in Dart
// Null safety is a feature in Dart that helps eliminate errors related to null values.
// It ensures that variables are either nullable or non-nullable, and helps avoid null dereference errors.
// Nullable and Non-Nullable Types
// Non-Nullable Types: By default, variables in Dart are non-nullable, meaning they cannot be assigned a null value.
// Nullable Types: You can explicitly mark a variable as nullable by using the ? symbol after the type.

void main() {
  int a = 5; // Non-nullable integer
  // a = null; // Error: Null can't be assigned to a variable of type 'int'.

  int? b = null; // Nullable integer
  print(b); // null

  // The ?, !, and late Keywords
// The ? (Nullable Type Modifier): Used to mark a variable as nullable, meaning it can store null values.
  String? name; // This can be null
  name = "Alice"; // Valid
  name = null; // Valid

  //The ! (Null Assertion Operator): Used to tell Dart that you are confident
  //a nullable variable is not null at a specific point in the code.
  //This operator will throw an exception if the value is null at runtime.
  int? a1 = null;
  int b1 = a1!; // Throws an exception if `a` is null

  //The late Keyword: Used for declaring a non-nullable variable that is initialized later,
  //i.e., after its declaration. It tells Dart that the variable will definitely be initialized
  //before it's used.
  late String description; // Non-nullable but initialized later
  description = "This is a late initialization";
  print(description); // Works fine

  //  Null Aware Operators
  // Dart provides several operators to deal with null values safely:
  // ?? (Null-Coalescing Operator): Returns the expression on its left
  // if it's not null, otherwise returns the expression on its right.
  String? name1;
  print(name1 ?? "Default Name"); // "Default Name" because `name` is null
  name1 = "Alice";
  print(name1 ?? "Default Name"); // "Alice" because `name` is not null

  //??= (Null-Coalescing Assignment Operator): Assigns the right-hand value
  //only if the variable on the left is null.
  int? x;
  x ??= 5; // Assign 5 to `x` because `x` is null
  print(x); // 5
  x ??= 10; // `x` is not null, so 10 is not assigned
  print(x); // 5

  Person? person;
  person
      ?.greet(); // Safe access, doesn't throw an exception because `person` is null
}

//?. (Null-Aware Access Operator): Used for calling methods or accessing properties
//on an object that might be null. If the object is null, the method or property is not accessed,
//and null is returned instead.
class Person {
  String? name;

  void greet() {
    print("Hello, $name!");
  }
}

void main1() {
  // Nullable and Non-Nullable Types
  int? a = 5; // Nullable
  int b = 10; // Non-nullable

  print(a); // 5
  print(b); // 10

  // The '!' Operator
  int? x = 20;
  print(x!); // Non-nullable because we assert it's not null

  // The 'late' Keyword
  late String description;
  description = "This is a late initialized variable!";
  print(description); // Works fine

  // Null Aware Operators
  String? name = null;
  print(name ?? "Default Name"); // Default Name because `name` is null

  name = "John";
  print(name ?? "Default Name"); // John because `name` is not null

  int? y;
  y ??= 100;
  print(y); // 100 because `y` was null

  Person? person;
  person?.greet(); // Safe call, does nothing because `person` is null
}

class Person1 {
  String? name;

  void greet() {
    print("Hello, $name!");
  }
}
