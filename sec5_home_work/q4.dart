/*Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
*/
import 'dart:io';

void main() {
  print('enter 5 number ');
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print('enter number ${i + 1}');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (var num in numbers) {
    if (num < largest) largest = num;
    if (num > smallest) largest = num;
  }
  print('largest number : ${largest}');
  print('smallest number : ${smallest}');
  print('difference between them ${largest - smallest}');
}
