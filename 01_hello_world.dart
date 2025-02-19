void main() {
  //   var myName = 'Mario Gasca';
  //   final myName = 'Mario Gasca';
  late final name;
  String myName = 'Mario Gasca';

  /**
   * La siguiente linea es una interpolación de string
   * Por lo tanto se debe de utilizar el simbolo $ previo al nombre
   * de la variable u operacion
   * */
  print('Hole $myName');

  /**
   * En Dart, podemos aplicar metodos como toUpperCase dentro de la interpolación
   * de String, pero, es necesario utilizar el simbolo $ seguido de llaves {} 
   * y dentro de las llaves el string/operacion con su método
   * de esta manera se hace la interpolación
   **/
  print('Hola ${myName.toUpperCase()}');
  print('Hola ${ 1 + 1 }');
}
