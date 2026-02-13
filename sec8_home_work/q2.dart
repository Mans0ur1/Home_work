/*Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).*/
class Car {
  String? _brand;
  int? _year;
  set brand(String brand) {
    if (brand.isEmpty) {
        print('Invalid brand name');
    } else
      _brand = brand;
  }

  set year(int year) {
    if (year < 1886) {
          print('Invalid year');
    } else
      _year = year;
  }

  get year => _year;
  get brand => _brand;
}

void main() {
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.year = 2002;
  print('car1: ${car1.brand},${car1.year}');

  Car car2 = Car();
  car2.brand = '';
  car2.year = 1880;
  print('car1: ${car2.brand},${car2.year}');
}
