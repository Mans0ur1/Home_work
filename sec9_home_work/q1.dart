/*Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule*/

class Vehicle {
  String _brand = "Unknown";
  int _year = 2000;
  double _fuelEfficiency = 10;
  Vehicle({
    required String brand,
    required int year,
    required double fuelEfficiency,
  }) {
    brand.isEmpty ? print('invalid') : _brand = brand;
    year < 1900 ? print('invalid') : _year = year;
    fuelEfficiency < 0 ? print('invalid') : _fuelEfficiency = fuelEfficiency;
  }

  double get fuelEfficiency => _fuelEfficiency;

  double fuelComputation(double distance) {
    return distance / _fuelEfficiency;
  }
}

class Car extends Vehicle {
  double _passengerWeight = 0;

  Car({
    required super.brand,
    required super.year,
    required super.fuelEfficiency,
    required double passengerWeight,
  }) {
    if (passengerWeight > 0) {
      _passengerWeight = passengerWeight;
    } else {
      print("Invalid passenger weight. Keeping default value.");
      _passengerWeight = 0;
    }
  }
  @override
  @override
  double fuelComputation(double distance) {
    return super.fuelComputation(distance) *
        (1 + (_passengerWeight / 50) * 0.02);
  }
}

class Truck extends Vehicle {
  double _cargoWeight = 0;
  Truck({
    required super.brand,
    required super.year,
    required super.fuelEfficiency,
    required double cargoWeight,
  }) {
    if (cargoWeight > 0) {
      _cargoWeight = cargoWeight;
    } else {
      print("Invalid cargo weight. Keeping previous value.");
    }
  }
  @override
  double fuelComputation(double distance) {
    return super.fuelComputation(distance) * (1 + (_cargoWeight * 0.05));
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car(brand: "Toyota", year: 2020, fuelEfficiency: 8, passengerWeight: 70),
    Truck(brand: "Volvo", year: 2018, fuelEfficiency: 15, cargoWeight: 500),
    Vehicle(brand: "Honda", year: 2015, fuelEfficiency: 12),
  ];

  List<double> trips = [100, 200, 50];

  for (var vehicle in vehicles) {
    double totalFuel = 0;
    for (var distance in trips) {
      totalFuel += vehicle.fuelComputation(distance);
    }

    double maxFuel = 50;

    print(
      "${vehicle.runtimeType} (${vehicle._brand}): Total fuel needed = ${totalFuel.toStringAsFixed(2)} liters",
    );

    if (totalFuel > maxFuel) {
      print(
        " ${vehicle.runtimeType} cannot complete the trip under its constraints (max $maxFuel liters).",
      );
    }
    print("");
  }
}
