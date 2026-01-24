/*Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.*/
import 'dart:io';

void main() {
  double mark;
  String? grade;
  print('enter your grade :');
  mark = double.parse(stdin.readLineSync()!);
  if (mark < 0 || mark == null || mark > 100) {
    print('enter valid grade :');
    mark = double.parse(stdin.readLineSync()!);
  }

  if (mark >= 90 && mark <= 100) {
    grade = 'A';
  } else if (mark >= 80 && mark < 90) {
    grade = 'B';
  } else if (mark >= 70 && mark < 80) {
    grade = 'C';
  } else if (mark >= 50 && mark < 70) {
    grade = 'D';
  } ;
  switch (grade) {
    case ('A'):
      print('your grade is : A');
    case ('B'):
      print('your grade is : B');
    case ('C'):
      print('your grade is : C');
    case ('D'):
      print('your grade is : D');
    default:
      print('you are fill');
  }
}
