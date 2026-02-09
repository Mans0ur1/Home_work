/*Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/
import 'dart:io';

void main() {
  print('enter number');
  int number = int.parse(stdin.readLineSync()!);
  List<String> digits = number.toString().split('');

  while (digits.length != 1) {
    int newNumber = 0;
    for (int i = 0; i < digits.length; i++) {
      newNumber += int.parse(digits[i]);
    }
    digits = newNumber.toString().split('');
    number = newNumber;
  }
  print(number);
}
