void main() {
  //Funciones y parametros

  print(greatEveryone());
  print('Suma ${addTwoNumbers(10, 20)}');
  print('Suma opcional ${addTwoNumbersOptional(10)}');
}

/**
 * Esta es una funciona valida, pero se puede 
 * mejorar con un arrowFunction
 *
String greatEveryone() {
  return '¡Hello everyone!';
}
**/

String greatEveryone() => '¡Hello everyone!';

// int addTwoNumbers( int a, int b ){

//   return a + b;
// }

int addTwoNumbers(int a, int b) => (a + b);

/**
 * Esta funcion permite el paso opcional del segundo parametro
 * y dentro del cuerpo se inicializa el valor, y aunque es valido
 * este ejemplo es mas sucio, por lo que se recomienda hacerlo
 * como en la segunda opción
int addTwoNumbersOptional(int a, [int? b]) {
  b ??= 0;
  return a + b;
}
**/

int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}
