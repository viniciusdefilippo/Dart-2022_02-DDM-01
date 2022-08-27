import '../util.dart';

/*
Tendo como dados de entrada o nome, a altura (em m) e o sexo (M ou F) 
de uma pessoa, calcule e mostre seu peso ideal, utilizando as seguintes 
fórmulas:

-	para sexo masculino: peso ideal = (72.7 * altura) - 58
-	para sexo feminino: peso ideal = (62.1 * altura) - 44.7

*/

void main() {
  cls();
  printTitle('Peso ideal - Cálculo IMC', '=');

  var nome = read('Entre com seu nome:');
  var sexo = read('Entre com seu sexo (M ou F):');
  var altura = readDouble('Entre com sua altura (em m):');
  var pesoIdeal;

  if (sexo == 'M' || sexo == 'm') {
    pesoIdeal = (72.7 * altura) - 58;
  } else {
    pesoIdeal = (62.1 * altura) - 44.7;
  }

  cls();
  printTitle('Resultado', '-');
  print('Nome: $nome');
  print('Altura: $altura cm - sexo: $sexo');
  print('Seu peso ideal é: ${pesoIdeal.toStringAsFixed(1)} Kg');
}
