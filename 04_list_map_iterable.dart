void main() {
  /**
   * Esto es una lista
   **/
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original $numbers');
  print('Tamanio ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First Item ${numbers.first}');
  print('Last Item ${numbers.last}');

  /**
   * Esto es un iterable y se tratan de distinta forma
   **/
  final reversedNumbers = numbers.reversed;

  print('Listado $reversedNumbers');

  /**
   * toSet se encarga de obtener los valores no duplicados
   * */
  print('Set ${reversedNumbers.toSet()}');

  /*
   * Los listados tienen propiedades que permite manipular sus valores
   * como en el siguiente ejemplo
   * */
  final numbersGreatherThan5 = reversedNumbers.where((int num) {
    return num > 5;
  });
  
  print('Numeros mayores a 5 ${numbersGreatherThan5.toSet()}');
}
