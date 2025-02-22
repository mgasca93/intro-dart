void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 90);
  final NuclearPlant nuclearPlant = NuclearPlant(initialEnergy: 90);

  void printEnergyLeft(EnergyPlant plant, String plantType) {
    print('$plantType energy left after charge phone: ${plant.energyLeft()}');
  }

  windPlant.consumeEnergy(10);
  nuclearPlant.consumeEnergy(10);
  printEnergyLeft(windPlant, 'Wind plant');
  printEnergyLeft(nuclearPlant, 'Nuclear plant');
}

enum EnergyType { wind, water, nuclear }

abstract class EnergyPlant {
  double _initialEnergy;
  final EnergyType type;

  EnergyPlant({required this.type, required double initialEnergy})
    : _initialEnergy = _validateInitialEnergy(initialEnergy);

  static double _validateInitialEnergy(double initialEnergy) {
    assert(initialEnergy > 10, 'Initial energy must be > 10');
    return initialEnergy;
  }

  void consumeEnergy(double amount);

  double energyLeft() => _initialEnergy;
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(type: EnergyType.wind, initialEnergy: initialEnergy);

  @override
  void consumeEnergy(double amount) {
    _initialEnergy -= amount;
  }
}

class NuclearPlant extends EnergyPlant {
  NuclearPlant({required double initialEnergy})
    : super(type: EnergyType.nuclear, initialEnergy: initialEnergy);

  @override
  void consumeEnergy(double amount) {
    _initialEnergy -= (amount * 0.3);
  }
}