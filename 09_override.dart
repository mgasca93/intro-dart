void main() {
//   final Hero wolverine = Hero('Logan', 'Regeneración');
//   final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  final Hero wolverine = Hero(name: 'Logan');

  /**
   * Explicacion del override}
   * print(wolverine.toString());
   * */
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});
  // Hero({required this.name, required this.power});
  // Hero(this.name, this.power);

//   Hero(String pName, String pPower)
//       : name = pName,
//         power = pPower;

  /**
   * Uso del override para sobre escribir comportamiento
   * */
  @override
  String toString() {
    return '$name - $power';
  }
}
