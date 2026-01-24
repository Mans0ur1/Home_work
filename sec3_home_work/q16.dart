/*Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/
void main() {
  int x = 10;
  int y = 20;
  int z = 30;

  bool expr1 = x > y;
  print(expr1);
  bool expr2 = x < z;
  print(expr2);
  bool expr3 = x == y || x == z;
  print(expr3);

  expr3 ? print('rule passed') : print('rule failed');
}
