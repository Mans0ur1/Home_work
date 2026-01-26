/*Create a program that removes duplicate
 numbers from the list [5, 3, 5, 7, 3, 9] 
 and prints how many unique numbers remain.*/
void main() {
  List numbers = [5, 3, 5, 7, 3, 9];
  Set uniqueNumber = numbers.toSet();
  int count = 0;
  int countUniqueNumber = numbers.length - uniqueNumber.length;
  print(countUniqueNumber);
}
