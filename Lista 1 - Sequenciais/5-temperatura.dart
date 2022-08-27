import '../util.dart';

/*
Escreva um programa para ler uma temperatura em graus Fahrenheit, calcular 
e escrever o valor correspondente em graus Celsius (baseado na fórmula abaixo):
C / 5 = (F - 32) / 9 
Observação: Para testar se a sua resposta está correta saiba que 100ºC = 212F
*/

void main() {
  cls();
  printTitle('Conversão Temperatura', '=');
  var fahrenheit = readDouble('Entre com a temperatura em graus Fahrenheit:');
  var celcius = 5 * (fahrenheit - 32) / 9;
  print('$fahrenheit F = ${celcius.toStringAsFixed(1)} ºC');
}
