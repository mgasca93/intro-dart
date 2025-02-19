void main() {
  print('La sunma es: ${addTwoNumbers(10, 15)}');
  print('La suma con parametro opcional es: ${addTwoNumbersOptional(10, 20)}');
  print(greatPerson(name: 'Mario', message: 'Hello'));
}

int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

/**
 * Funciones con parametros con nombre, esto se ocupa mucho en flutter
 * ya que nos permite utilizar argumentos no posicionales y obligatorios
 * */
String greatPerson({required String name, String message = 'Hola'}) {
  return '$message, $name';
}
