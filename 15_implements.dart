void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('wind energy left: ${windPlant.energyLeft}');
  print('wind energy left after charge phone: ${chargePhone(windPlant)}');

  print('nuclear energy left: ${nuclearPlant.energyLeft}');
  print('nuclear energy left after charge phone: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 9) {
    throw Exception('Not enough  energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { wind, water, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 5);
  }
}