//. Dart Collections: List, Set, and Map
// 1. Lists in Dart
// A List is an ordered collection of elements that can contain duplicates.
//You can define a list with fixed or growable length.

// Fixed Length vs Growable Lists
// Fixed Length List: The size is set at the time of creation and cannot be changed.
// Growable List: The size can be changed after creation (elements can be added or removed).

// 2. Sets in Dart
// A Set is an unordered collection of unique elements. A Set doesn't allow duplicates.

// Creating and Using Sets
// You can create a Set using curly braces {} or using the Set constructor.

// 3. Maps in Dart
// A Map is an unordered collection of key-value pairs, where each key is unique.

// Key-Value Pairs
// You can create a map where each element consists of a key and a value.
void main() {
  List<int> numbers = [1, 2, 3, 4];

  // Adding an element
  numbers.add(5);

  // Removing an element
  numbers.remove(3);

  // Checking if the list contains an element
  print(numbers.contains(2)); // true

  print(numbers); // [1, 2, 4, 5]

  // forEach
  numbers.forEach((n) => print(n)); // Prints each element

  // map
  List<int> doubled = numbers.map((e) => e * 2).toList();
  print(doubled); // [2, 4, 6, 8]

  // reduce
  int sum = numbers.reduce((value, element) => value + element);
  print(sum); // 10

  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 4, 5};

  // Union
  Set<int> unionSet = setA.union(setB);
  print(unionSet); // {1, 2, 3, 4, 5}

  // Intersection
  Set<int> intersectionSet = setA.intersection(setB);
  print(intersectionSet); // {3}

  // Difference
  Set<int> differenceSet = setA.difference(setB);
  print(differenceSet); // {1, 2}

  Map<String, int> map = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  // Accessing values
  print(map['Alice']); // 25

  // Adding an entry
  map['David'] = 40;

  // Updating an entry
  map['Alice'] = 26;

  print(map); // {Alice: 26, Bob: 30, Charlie: 35, David: 40}

  // Adding entries
  map.addAll({'Charlie': 35, 'David': 40});

  // Updating an entry
  map.update('Alice', (value) => value + 1);

  // Removing an entry
  map.remove('Bob');

  print(map); // {Alice: 26, Charlie: 35, David: 40}

  // Iterating using forEach
  map.forEach((key, value) {
    print('$key: $value');
  });

  // Iterating through keys and values separately
  print("Keys: ${map.keys}");
  print("Values: ${map.values}");
}
