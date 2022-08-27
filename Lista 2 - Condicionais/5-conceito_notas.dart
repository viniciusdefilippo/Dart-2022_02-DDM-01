import '../util.dart';

/*
Faça um programa para ler as 3 notas de avaliações (0-10) obtidas por um 
aluno. Calcular a média entre as notas e escrever o conceito do aluno de 
acordo com a tabela de conceitos abaixo:

Média de aproveitamento	  Conceito
    >=  9,0	                  A
    >=  7,5 e < 9,0	          B
    >=  6,0 e < 7,5	          C
     <  6,0	                  D

*/

void main() {
  cls();
  printTitle('Aproveitamento Aluno', '*');

  var p1 = readDouble('Entre com a primeira nota do aluno:');
  var p2 = readDouble('Entre com a segunda nota do aluno:');
  var p3 = readDouble('Entre com a terceira nota do aluno:');

  var media = (p1 + p2 + p3) / 3;

  printTitle('Resultados Aluno', '-');
  print('Prova 1: $p1 pontos');
  print('Prova 2: $p2 pontos');
  print('Prova 3: $p3 pontos');
  print('Média: ${media.toStringAsFixed(1)}');

  if (media >= 9) {
    print('Conceito A');
  } else if (media >= 7.5 && media < 9) {
    print('Conceito B');
  } else if (media >= 6 && media < 7.5) {
    print('Conceito C');
  } else {
    print('Conceito D');
  }
}
