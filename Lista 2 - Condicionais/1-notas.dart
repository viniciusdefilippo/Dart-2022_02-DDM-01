import '../util.dart';

/*
Ler as notas (de 0 a 10) da 1a. e 2a. avaliações de um aluno. Calcular a 
média aritmética simples e escrever uma mensagem que diga se o aluno foi ou
não aprovado (considerar que nota igual ou maior que 6 o aluno é aprovado). 
Escrever também a média calculada.
*/
void main() {
  cls();
  printTitle('Notas Aluno', '=');

  var p1 = readDouble('Entre com a nota da primeira avaliação (0-10):');
  var p2 = readDouble('Entre com a nota da segunda avaliação (0-10):');

  var media = (p1 + p2) / 2;

  if (media >= 6) {
    print('média: ${media.toStringAsFixed(1)} - Aluno Aprovado!');
  } else {
    print('média: ${media.toStringAsFixed(1)} - Aluno Reprovado.');
  }
}
