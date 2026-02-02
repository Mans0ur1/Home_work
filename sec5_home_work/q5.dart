/*Q5. Multiplication Table with Sum - Ask the
 user for a number. - Print its multiplication 
 table up to 10, then calculate the sum of all 
 results.*/

import 'dart:io';

void main() {
  print('enter number');
  int sum = 0;
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    int result = i * number;
    print('$number x $i = $result');
    sum += (i * number);
  }
  print('\nSum of all results: $sum');
}
