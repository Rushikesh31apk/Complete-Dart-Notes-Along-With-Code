/*
Operators in Dart are special symbols used to perform arithmetic, 
logical, relational, bitwise, and other operations on variables and values.
*/
void main() {
  //1. Arithmetic Operators (+, -, *, /, %, ~/)

  int a = 10, b = 3;
  print(a + b); // 13
  print(a - b); // 7
  print(a * b); // 30
  print(a / b); // 3.333
  print(a ~/ b); // 3
  print(a % b); // 1

  //2. Relational (Comparison) Operators (>, <, >=, <=, ==, !=)
  int x = 10, y = 5;
  print(x > y); // true
  print(x < y); // false
  print(x == y); // false
  print(x != y); // true

  //3. Logical Operators (&&, ||, !)
  bool isSunny = true;
  bool isWeekend = false;

  print(isSunny && isWeekend); // false
  print(isSunny || isWeekend); // true
  print(!isSunny); // false

  //4. Bitwise Operators (&, |, ^, ~, <<, >>)
  int a1 = 5, b1 = 3;
  print(a1 & b1); // 1
  print(a1 | b1); // 7
  print(a1 ^ b1); // 6
  print(~a1); // -6
  print(a1 << 1); // 10
  print(a1 >> 1); // 2

  //5. Assignment Operators (=, +=, -=, *=, /=, ~/=, %=)
  int x1 = 10;
  x1 += 5; // x = x + 5 → 15
  x1 *= 2; // x = x * 2 → 30
  print(x1); // 30

  //6. Conditional (Ternary) Operator (condition ? trueValue :
  int age = 20;
  String result = (age >= 18) ? "Adult" : "Minor";
  print(result); // Adult

  //7. Type Test Operators (is, is!)
  var value = 10;
  print(value is int); // true
  print(value is! String); // true

  //8. Null-aware Operators (??, ??=, ?.)
  String? name;
  print(name ?? "Default Name"); // Default Name

  int? number;
  number ??= 100; // Assigns 100 if number is null
  print(number); // 100
}
