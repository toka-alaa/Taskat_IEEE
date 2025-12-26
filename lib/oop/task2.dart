
class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Balance is not enough");
    }
  }

  double getBalance() {
    return balance;
  }
}


class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountNumber, String accountHolder, double balance, this.interestRate)
      : super(accountNumber, accountHolder, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Balance is not enough");
    }
  }

  void calculateInterest() {
    double interest = balance * interestRate / 100;
    balance += interest;
  }
}