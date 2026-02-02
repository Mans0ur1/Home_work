import 'dart:io';

void main() {
  print('Enter a number:');
  String input = stdin.readLineSync()!;

  int sum = 0;
  int largest = 0;

  for (int i = 0; i < input.length; i++) {
    int digit = int.parse(input[i]);
    sum += digit;
    if (digit > largest) {
      largest = digit;
    }
  }
  print('Sum of digits: $sum');
  print('Largest digit: $largest');
}
