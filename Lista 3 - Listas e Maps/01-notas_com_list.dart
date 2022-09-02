import '../util.dart';

/*
Escreva um programa que armazene uma quantidade de notas (0-10) em uma lista.
Calcular a média da turma e contar quantos alunos obtiveram nota acima desta
média calculada. Escrever a média da turma e o resultado da contagem.
*/

double calcularMedia() {
  var media = 0.0;
  var soma = 0.0;
  for (var nota in notas) {
    soma += nota;
  }
  media = soma / notas.length;
  return media;
}

int calcularAlunosAcimaMedia(double media) {
  var cont = 0;
  for (var i = 0; i < notas.length; i++) {
    if (notas[i] > media) {
      cont++;
    }
  }
  return cont;
}

List<double> notas = [5.6, 8.7, 7.8, 8.6, 6.8, 9.8, 6.9, 8.4, 7.2];

void main() {
  cls();
  printTitle('Notas com List', '=');
  print(notas);
  var media = calcularMedia();
  print('Média da turma: ${media.toStringAsFixed(2)}');
  print('Qtd. alunos acima da média: ${calcularAlunosAcimaMedia(media)}');
}
