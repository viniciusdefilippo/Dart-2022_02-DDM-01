import 'conta.dart';

class Agencia {
  int num;
  List<Conta> contas;

  Agencia({required this.num, this.contas = const []});

  Conta getConta(int numConta) {
    var conta = Conta();
    for (var i = 0; i < contas.length; i++) {
      if (contas[i].num == numConta) {
        return contas[i];
      }
    }
    return conta;
  }

  void addConta(Conta conta) {
    contas.add(conta);
  }

  void printContas() {
    for (var conta in contas) {
      print(conta.toString());
    }
  }
}
