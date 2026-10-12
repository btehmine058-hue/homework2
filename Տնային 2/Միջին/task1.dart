
abstract class Vehicle {
  double fuelConsumption();
}

class Car extends Vehicle {
  double litersPer100Km;

  Car(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

class Motorcycle extends Vehicle {
  double litersPer100Km;

  Motorcycle(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

double totalConsumption(List<Vehicle> vehicles, double distance) {
  double total = 0;

  for (Vehicle vehicle in vehicles) {
    total += vehicle.fuelConsumption() * distance / 100;
  }

  return total;
}

void main() {
  List<Vehicle> vehicles = [
    Car(8),
    Motorcycle(4),
  ];

  print(totalConsumption(vehicles, 200));
}
