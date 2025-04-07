void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://mariogasca.com/cursos');
    print(value);
  } on Exception catch (err) {
    print('Tuvimos una exception: $err');
  } catch (err) {
    print('Error fatal: $err');
  } finally {
    print('Fin del try catch.');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw new Exception('Faltan parametros por declarar'); //Error controlado
  //   throw 'Error no controlado';//Error no controlado
  //   return 'Tenemos un valor HTTP';
}
