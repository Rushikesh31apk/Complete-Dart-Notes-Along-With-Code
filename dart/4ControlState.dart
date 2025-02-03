/*
Control flow statements in Dart help in decision-making, looping, and exception handling. 
They allow programs to execute different blocks of code based on conditions or repeat certain actions.
*/
void main() {
  //1. Conditional Statements
  //(i) if Statement
  int age = 20;
  if (age >= 18) {
    print("You are an adult.");
  }
  //(ii) if-else Statement
  if (age >= 18) {
    print("You can vote.");
  } else {
    print("You are too young to vote.");
  }
  //(iii) if-else if-else Statement
  int marks = 75;
  if (marks >= 90) {
    print("Grade: A+");
  } else if (marks >= 75) {
    print("Grade: A");
  } else if (marks >= 60) {
    print("Grade: B");
  } else {
    print("Grade: Fail");
  }
  //(iv) Switch-Case Statement
  String grade = "A";

  switch (grade) {
    case "A":
      print("Excellent!");
      break;
    case "B":
      print("Good job!");
      break;
    case "C":
      print("Needs improvement.");
      break;
    default:
      print("Invalid grade.");
  }
  //2. Looping Statements
  //(i) for Loop
  for (int i = 1; i <= 5; i++) {
    print("Count: $i");
  }
  //(ii) while Loop
  int i = 1;
  while (i <= 5) {
    print("Number: $i");
    i++;
  }
  //(iii) do-while Loop
  int n = 1;
  do {
    print("Hello $n");
    n++;
  } while (n <= 3);
}
