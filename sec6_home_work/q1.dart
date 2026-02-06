
/*Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method.*/
class Calculator {
  int? num1;
  int? num2;
  Calculator(this. num1,this. num2);
  void addNumbers() {
    return print('${num1! + num2!}');
  }
}

void main() {
  Calculator calculator1 = Calculator(10, 20);
  print(calculator1);
}
