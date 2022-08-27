import '../util.dart';

/*
Escreva um programa para ler as dimensões de um retângulo (base e altura), 
calcular e escrever a área do retângulo.
*/

void main() {
  cls();
  printTitle('Cálculo Área do Retângulo', '=');
  var lado1 = readDouble('Entre com a base do retângulo:');
  var lado2 = readDouble('Entre com a altura do retângulo:');
  var area = lado1 * lado2;
  cls();
  print('Área do retângulo = $lado1 x $lado2 = ${area.toStringAsFixed(2)} m2');
}
