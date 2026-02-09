/*Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.*/

class City {
  String name;
  int population;
  City(this.name, this.population);
}

void main() {
  City city1 = City('Cairo', 10000000);
  print('City name :${city1.name}\npopulation of this city :${city1.population}');
}
