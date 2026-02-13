import 'dart:io';

/*Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list*/
void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Enter number $i: ');
    int? value = int.tryParse(stdin.readLineSync() ?? '');

    if (value == null) {
      print('Invalid input. Please enter a valid integer.');
      i--;
      continue;
    }

    numbers.add(value);
  }

  int largest = numbers.first;
  int smallest = numbers.first;
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int num in numbers) {
    if (num > largest) largest = num;
    if (num < smallest) smallest = num;

    sum += num;

    if (num.isEven) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  double average = sum / numbers.length;

  print('\n===== Results =====');
  print('Largest: $largest');
  print('Smallest: $smallest');
  print('Difference: ${largest - smallest}');
  print('Average: ${average.toStringAsFixed(2)}');

  print('Numbers above average:');
  numbers.where((num) => num > average).forEach(print);

  print('Even count: $evenCount');
  print('Odd count: $oddCount');
}
