void main() {
  /**
   * Tipos de variables
   * */
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  //   final abilities = <String>["Impact trueno"];
  final List<String> abilities = ["Impact trueno"];
  final sprites = <String>["pikachu/front.png", "pikachu/back.png"];

  /**
   *  dynamic type es un tipo especial de dart, en donde una variable puede ser de 
   * cualquier tipo, por defecto lo type dynamic siempre se inicializan en null
   * */
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = 12.0;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => null;
  errorMessage = null;

  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}
