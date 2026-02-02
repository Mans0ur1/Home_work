/*Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  stdout.write('Enter  number one : ');
  double number1 = double.parse(stdin.readLineSync()!);
  stdout.write('Enter  number tow : ');
  double number2 = double.parse(stdin.readLineSync()!);
  stdout.write('Enter  number three : ');
  double number3 = double.parse(stdin.readLineSync()!);

  double sum = number1 + number2 + number3;
  print('sum : $sum');
  double average = sum / 3;
  print('average : $average');
  average > 50
      ? print('average greater than 50')
      : print('average not greater than 50');
}
