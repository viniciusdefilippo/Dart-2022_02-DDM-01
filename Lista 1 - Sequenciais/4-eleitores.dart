import '../util.dart';

/*
Escreva um programa para ler o número total de eleitores de um município, 
o número de votos brancos, nulos e válidos. Calcular e escrever o percentual
que cada um representa em relação ao total de eleitores.
*/

void main() {
  cls();
  printTitle('Resultado Eleição', '=');
  var eleitores = readInt('Entre com total de eleitores:');
  var brancos = readInt('Entre com total de votos em branco:');
  var nulos = readInt('Entre com total de votos nulos:');
  var validos = eleitores - brancos - nulos;

  cls();
  printTitle('Resumo: Resultado Eleição', '=');
  print('Total eleitores: \t$eleitores');
  print('-----------------------------');
  print(
      'Votos brancos: \t$brancos \t${(brancos / eleitores * 100).toStringAsFixed(1)}%');
  print(
      'Votos nulos: \t$nulos \t${(nulos / eleitores * 100).toStringAsFixed(1)}%');
  print(
      'Votos válidos: \t$validos \t${(validos / eleitores * 100).toStringAsFixed(1)}%');
}
