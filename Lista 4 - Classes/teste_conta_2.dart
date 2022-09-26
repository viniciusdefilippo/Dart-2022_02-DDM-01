import '../util.dart';
import 'conta.dart';
import 'agencia.dart';

void main() {
  var agencia = Agencia(
    num: 100,
    contas: [
      Conta(
        num: 1010,
        nome: 'Pedro José da Silva',
        limite: 100,
        saldo: 100,
      ),
      Conta(
        num: 2020,
        nome: 'Maria do Carmo da Silva',
        limite: 100,
        saldo: 100,
      ),
    ],
  );

  var c = Conta(num: 3030, nome: 'José Afonso Dias', limite: 100, saldo: 100);
  agencia.addConta(c);

  printTitle('Contas da Agência num. ${agencia.num}', '=', 70);
  agencia.printContas();

  var c1 = agencia.getConta(1010);
  var c2 = agencia.getConta(2020);

  // Caso de teste 1 - Saldo 100, limite 100
  // operação: saque = 50 - esperado: saldo = 50
  printTitle('Caso teste 1', '-', 70);
  c1.sacar(50);
  print(c1.toString());
  // voltando condiçao inicial
  c1.depositar(50);

  // Caso de teste 2 - Saldo 100, limite 100
  // operação: saque = 150 - esperado: saldo = -50
  printTitle('Caso teste 2', '-', 70);
  c1.sacar(150);
  print(c1.toString());
  // voltando condiçao inicial
  c1.depositar(150);

  // Caso de teste 3 - Saldo 100, limite 100
  // operação: saque = 250 - esperado: saldo = 100
  printTitle('Caso teste 3', '-', 70);
  c1.sacar(250);
  print(c1.toString());

  // Caso de teste 4 - conta 1 e conta 2 - Saldo 100, limite 100
  // operação: transferência = 50 - esperado:
  // conta 1 - saldo = 50
  // conta 2 - saldo = 150
  printTitle('Caso teste 4', '-', 70);
  c1.transferir(c2, 50);
  print(c1.toString());
  print(c2.toString());
  // voltando condiçao inicial
  c2.transferir(c1, 50);

  // Caso de teste 5 - conta 1 e conta 2 - Saldo 100, limite 100
  // operação: transferência = 100 - esperado:
  // conta 1 - saldo = 0
  // conta 2 - saldo = 200
  printTitle('Caso teste 5', '-', 70);
  c1.transferir(c2, 100);
  print(c1.toString());
  print(c2.toString());
  // voltando condiçao inicial
  c2.transferir(c1, 100);

  // Caso de teste 6 - conta 1 e conta 2 - Saldo 100, limite 100
  // operação: transferência = 250 - esperado:
  // conta 1 - saldo = 100
  // conta 2 - saldo = 100
  printTitle('Caso teste 6', '-', 70);
  c1.transferir(c2, 250);
  print(c1.toString());
  print(c2.toString());

  printTitle('Testes conta nula', '-', 70);
  var c3 = agencia.getConta(10);
  c1.transferir(c3, 10);

  print(c3.toString());
}
