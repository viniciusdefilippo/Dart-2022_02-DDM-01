import '../util.dart';

/*
Um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem 
do distribuidor e dos impostos (aplicados ao custo de fábrica). 
Supondo que o percentual do distribuidor seja de 28% e os impostos de 45%, 
escrever um programa para ler o custo de fábrica de um carro, calcular e 
escrever o custo final ao consumidor.
*/

void main() {
  cls();
  printTitle('Custo Veículo', '=');
  var precoCusto = readDouble('Entre com o custo de fábrica do veículo:');
  var impostos = precoCusto * .45;
  var distribuidor = precoCusto * .28;
  var precoVenda = precoCusto + impostos + distribuidor;
  cls();
  printTitle('Composição Preço Final', '=');
  print('Preço de custo: \tR\$ ${precoCusto.toStringAsFixed(2)}');
  print('Total impostos: \tR\$ ${impostos.toStringAsFixed(2)}');
  print('Total distribuidor: \tR\$ ${distribuidor.toStringAsFixed(2)}');
  print('--------------------------------------------');
  print('Preço final venda: \tR\$ ${precoVenda.toStringAsFixed(2)}');
  print('--------------------------------------------');
}
