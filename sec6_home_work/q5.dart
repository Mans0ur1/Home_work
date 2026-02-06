/*Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('rr');

  for (int i = 0; i < 6; i++) {
    print('enter number $i');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largest = numbers[0];
  int secondLargest = numbers[0];
  for (int i = 0; i < 6; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
      
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }
  print('largest number : $largest');
  print('second largest number : $secondLargest');
}
