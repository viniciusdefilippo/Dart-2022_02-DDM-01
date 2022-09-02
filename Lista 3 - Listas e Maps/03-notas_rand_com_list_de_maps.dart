import '../util.dart';

/*
Fazer uma função em Dart que gere e devolva um número inteiro aleatório. 
Evoluir o exercício 2 agora preenchendo as notas por meio desta função criada.
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

void preencherNotasAleatorias() {
  for (var aluno in alunos) {
    aluno['nota'] = minMaxRandomInt(max: 10);
  }
}

void printListaAlunos(List<Map<String, dynamic>> lista) {
  for (var aluno in lista) {
    print('${aluno['nome']}: ${aluno['nota']}');
  }
}

List<Map<String, dynamic>> alunos = [
  {'nome': 'Ana', 'nota': 5.6},
  {'nome': 'Pedro', 'nota': 8.7},
  {'nome': 'Gabriele', 'nota': 7.8},
  {'nome': 'Cristina', 'nota': 8.6},
  {'nome': 'Fernando', 'nota': 6.8},
  {'nome': 'Edson', 'nota': 9.8},
  {'nome': 'Mariana', 'nota': 6.9},
  {'nome': 'Clarissa', 'nota': 8.4},
  {'nome': 'Roberto', 'nota': 7.2},
];

List<Map<String, dynamic>> alunosAcimaMedia = [];

void main() {
  cls();
  preencherNotasAleatorias();
  printTitle('Notas com List de Maps', '=');
  printListaAlunos(alunos);
  var media = calcularMedia();
  print('Média da turma: ${media.toStringAsFixed(2)}');
  print('Qtd. alunos acima da média: ${calcularAlunosAcimaMedia(media)}');
  printTitle('Alunos Acima da média', '-');
  printListaAlunos(alunosAcimaMedia);
}
