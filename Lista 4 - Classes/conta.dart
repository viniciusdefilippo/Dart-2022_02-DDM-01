import '../util.dart';

class Conta {
  final int? num;
  final String? nome;
  double? saldo;
  double? limite;

  Conta({this.num, this.nome, this.saldo, this.limite});

  bool sacar(double valor) {
    if (saldo != null && limite != null) {
      if (valor <= this.saldo! + this.limite!) {
        this.saldo = this.saldo! - valor;
        return true;
      }
    }
    print('Não foi possível efetuar a transação.');
    return false;
  }

  void depositar(double valor) {
    if (saldo != null) {
      saldo = saldo! + valor;
    } else {
      print('Não foi possível efetuar a transação.');
    }
  }

  void transferir(Conta c, double valor) {
    if (saldo != null && c.saldo != null) {
      if (sacar(valor)) {
        c.depositar(valor);
      }
    } else {
      print('Não foi possível efetuar a transação.');
    }
  }

  @override
  String toString() {
    if (num != null) {
      String msg = '$num: ${fitString(this.nome!, 20)} - '
          'limite: R\$ ${this.limite!.toStringAsFixed(2)} - '
          'saldo: R\$ ${this.saldo!.toStringAsFixed(2)}';
      return msg;
    } else {
      return 'Conta não encontrada.';
    }
  }
}
