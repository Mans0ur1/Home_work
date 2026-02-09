/*Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary.*/

class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
  void giveRaise(int amount) {
    salary += amount;
  }
}

void main() {
  Employee employee1 = Employee('ali', 10000);
  employee1.giveRaise(500);
  print(employee1.salary);
}
