import '../util.dart';

/*
Evolua o exercício anterior agora armazenando não somente as notas dos 
alunos (0-10), mas também o nome e e-mail de cada aluno. Calcular a média 
da turma e contar quantos alunos obtiveram nota acima desta média calculada.
Escrever a média da turma e o resultado da contagem apresentando os nomes 
e e-mails dos alunos que ficaram acima da média. Para resolver este problema,
deve ser utilizada uma lista de maps.
*/

double calcularMedia() {
  var media = 0.0;
  var soma = 0.0;
  for (var nota in alunos) {
    soma += nota['nota'];
  }
  media = soma / alunos.length;
  return media;
}

int calcularAlunosAcimaMedia(double media) {
  var cont = 0;
  for (var i = 0; i < alunos.length; i++) {
    if (alunos[i]['nota'] > media) {
      cont++;
      alunosAcimaMedia.add(alunos[i]);
    }
  }
  return cont;
}

void printListaAlunos(List<Map<String, dynamic>> lista) {
  for (var aluno in lista) {
    print('${aluno['nome']} (${aluno['email']}): ${aluno['nota']}');
  }
}

List<Map<String, dynamic>> alunos = [
  {'nome': 'Ana', 'email': 'ana@mail.com', 'nota': 5.6},
  {'nome': 'Pedro', 'email': 'pedro@mail.com', 'nota': 8.7},
  {'nome': 'Gabriele', 'email': 'gabriele@mail.com', 'nota': 7.8},
  {'nome': 'Cristina', 'email': 'cristina@mail.com', 'nota': 8.6},
  {'nome': 'Fernando', 'email': 'fernando@mail.com', 'nota': 6.8},
  {'nome': 'Edson', 'email': 'edson@mail.com', 'nota': 9.8},
  {'nome': 'Mariana', 'email': 'mariana@mail.com', 'nota': 6.9},
  {'nome': 'Clarissa', 'email': 'clarissa@mail.com', 'nota': 8.4},
  {'nome': 'Roberto', 'email': 'roberto@mail.com', 'nota': 7.2},
];

List<Map<String, dynamic>> alunosAcimaMedia = [];

void main() {
  cls();
  printTitle('Notas com List de Maps', '=');
  var media = calcularMedia();
  print('Média da turma: ${media.toStringAsFixed(2)}');
  print('Qtd. alunos acima da média: ${calcularAlunosAcimaMedia(media)}');
  printTitle('Alunos Acima da média', '-');
  printListaAlunos(alunosAcimaMedia);
}
