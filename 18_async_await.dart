void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://mariogasca.com/cursos');
    print(value);
  } catch (err) {
    print('Error: $err');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw 'Tenemos un error';
  //   return 'Tenemos un valor HTTP';
}