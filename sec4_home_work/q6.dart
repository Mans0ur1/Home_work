/*Create a program that calculates the factorial of 6 and prints the result.
*/
void main() {
  int number = 6;
  int fact = 1;
  for (int i = 1; i <= number; i++) {
    fact *= i;
  }
  print(fact);
}
