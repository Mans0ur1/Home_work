/*Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.
*/
class BankAccount {
  double _balance = 0;
  get balance => _balance;
  set balance(double balance) {
    if (balance < 0) {
      print('Invalid balance');
    } else {
      _balance = balance;
    }
  }
}

void main() {
  BankAccount bankAccount1 = BankAccount();
  bankAccount1.balance = 10;
  bankAccount1.balance = -41;
  print(bankAccount1.balance);
}
