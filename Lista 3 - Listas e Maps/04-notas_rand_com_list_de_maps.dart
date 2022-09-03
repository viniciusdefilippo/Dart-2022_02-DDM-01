import '../util.dart';

/*
Evoluir o exercício anterior criando uma nova função que gere notas 
aleatórias entre 7.0 e 10.0.
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

void preencherListaAlunos() {
  for (var i = 0; i < nomes.length; i++) {
    Map<String, dynamic> aluno = {};
    aluno['nome'] = nomes[i];
    aluno['email'] = emails[i];
    aluno['nota'] = minMaxRandomDouble(min: 7, max: 10);
    alunos.add(aluno);
  }
}

void printListaAlunos(List<Map<String, dynamic>> lista) {
  for (var aluno in lista) {
    print(
        '${aluno['nome']} (${aluno['email']}): ${aluno['nota'].toStringAsFixed(1)}');
  }
}

List<Map<String, dynamic>> alunos = [];
List<String> nomes = [
  'Ana',
  'Pedro',
  'Cristina',
  'Fernando',
  'Edson',
  'Mariana',
  'Clarissa',
  'Roberto'
];

List<String> emails = [
  'ana@mail.com',
  'pedro@mail.com',
  'cristina@mail.com',
  'fernando@mail.com',
  'edson@mail.com',
  'mariana@mail.com',
  'clarissa@mail.com',
  'roberto@mail.com'
];

List<Map<String, dynamic>> alunosAcimaMedia = [];

void main() {
  cls();
  preencherListaAlunos();
  printTitle('Notas com List de Maps', '=');
  printListaAlunos(alunos);
  var media = calcularMedia();
  print('Média da turma: ${media.toStringAsFixed(2)}');
  print('Qtd. alunos acima da média: ${calcularAlunosAcimaMedia(media)}');
  printTitle('Alunos Acima da média', '-');
  printListaAlunos(alunosAcimaMedia);
}
