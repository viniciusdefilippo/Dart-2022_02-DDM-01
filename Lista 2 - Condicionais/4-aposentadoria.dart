import '../util.dart';

/*
Uma empresa quer verificar se um funcionário está qualificado para a 
aposentadoria ou não. Para estar em condições, um dos seguintes requisitos 
deve ser satisfeito:

-	Ter no mínimo 65 anos de idade.
-	Ter trabalhado no mínimo 30 anos.
-	Ter no mínimo 60 anos e ter trabalhado no mínimo 25 anos.

Com base nas informações acima, faça um programa que leia: o número de
matrícula do funcionário (código), o ano de seu nascimento e o ano de seu 
ingresso na primeira empresa em que ele trabalhou. O programa deverá 
escrever a idade e o tempo de trabalho do empregado e a mensagem:
'Requerer aposentadoria' ou 'Não requerer'.

*/

void main() {
  cls();
  printTitle('Extrato Aposentadoria', '=');

  var matricula = readInt('Entre com o número de matrícula do funcionário:');
  var anoNasc = readInt('Entre o ano de nascimento do funcionário:');
  var anoInicio = readInt('Entre o ano de ingresso na primeira empresa:');

  var hoje = DateTime.now();

  var idade = hoje.year - anoNasc;
  var tempoServico = hoje.year - anoInicio;

  cls();
  printTitle('Situação Funcionário matr. $matricula', '-');
  print('Idade: $idade anos');
  print('Tempo serviço: $tempoServico anos');

  if ((idade >= 60 && tempoServico >= 25) ||
      (idade >= 65) ||
      (tempoServico >= 30)) {
    print('Requerer aposentadoria.');
  } else {
    print('Não requerer aposentadoria');
  }
}
