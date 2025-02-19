void main(){
  print('La sunma es: ${ addTwoNumbers(10, 15)}');
  print('La suma con parametro opcional es: ${addTwoNumbersOptional(10, 20)}');
}

int addTwoNumbers( int a, int b) => a + b;
int addTwoNumbersOptional( int a, [ int b = 0]){
  return a + b;
}