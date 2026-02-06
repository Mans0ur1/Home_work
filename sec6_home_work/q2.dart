/*Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.*/

class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
}

void main() {
  Car car1 = Car('BMW', 2024);
  Car car2 = Car('Mercedes', 2023);
  print(car1.brand);
  print(car1.year);
  print(car2.brand);
  print(car2.year);
}
