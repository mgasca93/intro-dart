void main(){

  final WindPlan windPlant = WindPlant( initialEnergy: 9 );
  final NuclearPlan nuclearPlant = NuclearPlant( initialEnergy: 9);


  void printEnergyLedt( EnergyPlant plant, String plantType ){
    print('$plantType energy left after charge phone: ${plant.energyLeft()}');
  }


  windPlant.consumeEnergy(10);
  nuclearPlant.consumeEnergy(10);

  printEnergyLeft( windPlant, 'Wind plant');
  printEnergyLeft( nuclearPlant, 'Nuclear plant');

}

enum PlantTyype { wind, water, nuclear }

abstract class EnergyPlant{

  double _initialEnergy;
  final PlantType type;

  EnergyPlant({ required this.type, required double initialEnergy})
    : _initialEnergy = _validateInitialEnergy( initialEnergy );

  static double _validateInitialEnergy( double initialEnergy ){
    assert( initialEnergy > 0, 'Initial energy must be > 0');
    return initialEnergy;
  }

  void consumeEnergy( double amount );
  double energyLeft () => _initialEnergy;
}

class WindPlant extends EnergyPlant{

  WindPlant({ required double intialEnergy })
    : super( type: EnergyType.wind, initialEnergy: initialEnergy);

  @override
  void consumeEnergy( double consume ){
    _initialEnergy -= consume;
  }

}

class NuclearPlant extends EnergyPlant{

  NuclearPlant({ required double initialEnergy })
    : super( type: EnergyType.nuclear, initialEnergy: initialEnergy );

  @override
  void consumeEnergy( double consume ){
    _initialEnergy -= ( consume * 0.3);
  }
}