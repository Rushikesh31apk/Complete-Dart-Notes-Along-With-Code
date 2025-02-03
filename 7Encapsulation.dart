//Encapsulation
//Encapsulation is the hiding of data to prevent direct modification.
//(i) Private Variables (Using _)
//In Dart, private variables start with an underscore (_), making them accessible only within the same file.
class BankAccount {
  String _accountNumber = "12345"; // Private variable
  double _balance = 5000; // Private variable

  double get balance => _balance; // Getter

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient balance!");
    }
  }
}
//2. Public and Private Access
//Public members can be accessed anywhere.
//Private members (starting with _) can only be accessed within the same file.

void main() {
  var account = BankAccount();
  account.deposit(2000);
  print("Balance: ${account.balance}"); // Accessing via getter
}
