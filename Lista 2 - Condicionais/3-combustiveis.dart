import '../util.dart';

/*
Um posto está vendendo combustíveis com a seguinte regra para os descontos:

1.	Etanol
    1.	até 20 litros, desconto de 3% por litro
    2.	acima de 20 litros, desconto de 5% por litro
2.	Gasolina
    1.	até 20 litros, desconto de 4% por litro
    2.	acima de 20 litros, desconto de 6% por litro

Escreva um programa que leia os valores dos preços dos litros de etanol e 
gasolina e o total de litros a abastecer, calcule e imprima a relação 
percentual entre o preço dos litros do etanol e da gasolina, qual a melhor 
opção de combustível e quanto seria pago pelo cliente em cada opção de 
combustível.

*/

void main() {
  cls();
  printTitle('Relatório Combustíveis', '=');

  var etanol = readDouble('Entre com o preço do etanol:');
  var gasolina = readDouble('Entre com o preço da gasolina:');
  var totalLitros = readDouble('Entre com a quantidade de litros a abstecer:');

  var descontoGasolina;
  var descontoEtanol;
  var proporcao = etanol / gasolina;

  if (totalLitros <= 20) {
    descontoEtanol = etanol * totalLitros * 0.03;
    descontoGasolina = gasolina * totalLitros * 0.04;
  } else {
    descontoEtanol = etanol * totalLitros * 0.05;
    descontoGasolina = gasolina * totalLitros * 0.06;
  }

  cls();
  printTitle('Relatório Combustíveis', '-');
  print('Proporção etanol/gasolina: ${proporcao.toStringAsFixed(2)}%');
  if (proporcao <= 0.7) {
    print('Melhor opção: ETANOL\n');
  } else {
    print('Melhor opção: GASOLINA\n');
  }
  print('--------------------------------------------');
  print('Total de litros a abastecer: $totalLitros litros');
  print(
      'Total a pagar em Etanol: R\$ ${(etanol * totalLitros - descontoEtanol).toStringAsFixed(2)}');
  print(
      'Total a pagar em Gasolina: R\$ ${(gasolina * totalLitros - descontoGasolina).toStringAsFixed(2)}');
}
