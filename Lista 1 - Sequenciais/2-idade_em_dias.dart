import '../util.dart';

/*
Faça um programa que leia a idade de uma pessoa expressa em anos, 
meses e dias e escreva a idade dessa pessoa expressa apenas em dias. 
Considerar ano com 365 dias e mês com 30 dias.
*/

void main() {
  cls();
  printTitle('Idade em dias', '=');
  var anos = readInt('Quantos anos vc tem?');
  var meses = readInt('E mais quantos meses?');
  var dias = readInt('E mais quantos dias?');

  var lifeTime = anos * 365 + meses * 30 + dias;

  print('Que legal! Vc já viveu: $lifeTime dias.');
}
