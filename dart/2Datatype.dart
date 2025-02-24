/*
Dart is a statically typed language, meaning every variable has a specific data type. 
*/
void main() {
  //1. Numbers (int, double, num)
  int numInt = 10; // integer
  double numDouble = 10.5; // double
  num numNum = 10; // num (can be int or double)
  print(numInt);
  print(numDouble);
  print(numNum);
  // 2. Strings (String)
  String str = "Hello, World!"; // string
  print(str);

  // String Interpolation:
  String name = "Rushi";
  String age = "21";
  String strInterpolation = "My name is $name and I am $age years old.";
  print(strInterpolation);

  // 3. Boolean (bool)
  bool boolVar = true; // boolean
  print(boolVar);

  // 4. Lists (List<T>) A List is an ordered collection of elements.
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers); // [1, 2, 3, 4, 5]

  numbers.add(2); // Adding an element
  print(numbers);

  // 5. Sets (Set<T>) A Set is an unordered collection of unique elements.
  Set<int> uniqueNumbers = {1, 2, 3, 3, 4};
  print(uniqueNumbers); // {1, 2, 3, 4}

  // 6. Maps (Map<K, V>) A Map is an unordered collection of key-value pairs.
  Map<String, int> person = {"name": 123, "age": 2};
  print(person); // {name: 1, age: 2}

  //7. The dynamic Type The dynamic type allows a variable to hold values of different types.
  dynamic value = 10;
  print(value); // 10

  value = "Hello";
  print(value); // Hello

  //8. var, final, and const

  //var → The compiler infers the data type.
  //final → Value cannot be changed after assignment.
  //const → Value is known at compile-time.

  var name1 = "Dart"; // Inferred as String
  final age1 = 25; // Cannot be changed at run-time
  const pi = 3.14; // Constant at compile-time

  print(name1); // Dart
  print(age1); // 25
  print(pi); // 3.14

  //9. Null and Null Safety (? Operator)
  String? nullableString; // Can be null
  print(nullableString); // null

  nullableString = "Hello, Dart!";
  print(nullableString); // Hello, Dart!
}

/*
Summary of Data Types in Dart
Type	Description	Example
int	Whole numbers	int age = 25;
double	Decimal numbers	double pi = 3.14;
num	Can store both int and double	num x = -10;
String	Text or characters	String name = "Dart";
bool	Boolean values (true, false)	bool isReady = true;
List	Ordered collection	List<int> nums = [1, 2, 3];
Set	Unordered, unique collection	Set<int> nums = {1, 2, 3};
Map	Key-value pairs	Map<String, int> marks = {'Math': 90};
dynamic	Can hold any data type	dynamic x = "Hello";
var	Type inferred automatically	var language = "Dart";
final	Immutable after assignment	final pi = 3.14;
const	Compile-time constant	const gravity = 9.8;
Null	Represents no value (null)	String? name = null;
*/
