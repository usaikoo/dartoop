class BankAccount {
  // Private property
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter for the private property (balance)
  double get balance => _balance;

  // Setter for the private property (balance)
  set balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
      print("Balance updated successfully!");
    } else {
      print("Invalid balance. Please provide a non-negative balance.");
    }
  }
}

void main() {
  // Creating an instance of the BankAccount class
  var account = BankAccount(1000.0);

  // Accessing the balance using the getter
  print("Current balance: \$${account.balance}");

  // Using the setter to update the balance
  account.balance = 1200.0;
  print("Updated balance: \$${account.balance}");

  // Trying to set an invalid negative balance
  account.balance = -500.0; // This will print an error message

  // Accessing the balance after attempting to set an invalid balance
  print("Balance after invalid update: \$${account.balance}");
}
