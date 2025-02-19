void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>["Impostor"],
    'sprites': <int, String>{1: 'ditto/front.png', 2: 'ditto/back.png'}
  };
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('hp: ${pokemon['hp']}');
  print('Sprites: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
