// 7. Null Safety in Dart
// Null safety is a feature in Dart that helps eliminate errors related to null values.
// It ensures that variables are either nullable or non-nullable, and helps avoid null dereference errors.
// Nullable and Non-Nullable Types
// Non-Nullable Types: By default, variables in Dart are non-nullable, meaning they cannot be assigned a null value.
// Nullable Types: You can explicitly mark a variable as nullable by using the ? symbol after the type.

// The ?, !, and late Keywords
// The ? (Nullable Type Modifier): Used to mark a variable as nullable, meaning it can store null values.

void main() {
  int a = 5; // Non-nullable integer
  // a = null; // Error: Null can't be assigned to a variable of type 'int'.

  int? b = null; // Nullable integer
  print(b); // null

  String? name; // This can be null
  name = "Alice"; // Valid
  name = null; // Valid
  //The ! (Null Assertion Operator): Used to tell Dart that you are confident
  //a nullable variable is not null at a specific point in the code.
  //This operator will throw an exception if the value is null at runtime.
  int? a1 = null;
  int b1 = a1!; // Throws an exception if `a` is null
}
