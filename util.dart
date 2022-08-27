import 'dart:io';
import 'dart:math';

void cls() {
  print('\x1B[2J\x1B[0;0H');
}

String read(msg, {String errorMsg = 'Valor inválido.'}) {
  print(msg);
  var input = stdin.readLineSync();
  while (input == null || input == '') {
    print('$errorMsg $msg');
    input = stdin.readLineSync();
  }
  return input;
}

int readInt(String msg, {String errorMsg = 'Valor inválido.'}) {
  print(msg);
  var input = stdin.readLineSync();
  while (!isInt(input!)) {
    cls();
    print('$errorMsg $msg');
    input = stdin.readLineSync();
  }
  return int.parse(input);
}

bool isInt(String input) {
  try {
    int.parse(input);
    return true;
  } on Exception catch (e) {
    print(e);
  }
  return false;
}

double readDoubleV2({String msg = 'Type a Double'}) {
  print(msg);
  var out = double.tryParse(stdin.readLineSync()!);
  while (out == null) {
    print('Error: invalid input: $msg');
    out = double.tryParse(stdin.readLineSync()!);
  }
  return out;
}

double readDouble(String msg, {String errorMsg = 'Valor inválido.'}) {
  print(msg);
  var input = stdin.readLineSync();
  while (!isDouble(input!)) {
    cls();
    print('$errorMsg $msg');
    input = stdin.readLineSync();
  }
  return double.parse(input);
}

bool isDouble(String input) {
  try {
    double.parse(input);
    return true;
  } on Exception catch (e) {
    print(e);
  }
  return false;
}

void printLine(String simbol, [int size = 50]) {
  var line = '';
  for (var i = 0; i < size; i++) {
    line += simbol;
  }
  print(line);
}

void printTitle(String title, String simbol, [int size = 50]) {
  printLine(simbol, size);
  print(title);
  printLine(simbol, size);
}

int minMaxRandomInt({int min = 0, required int max}) {
  var num = min + (Random().nextInt(max - min + 1));
  return num;
}

double minMaxRandomDouble({int min = 0, required int max}) {
  var num = min + (Random().nextDouble() * (max - min));
  return num;
}

String fitString(String myString, int maxSize) {
  var texto = (myString.length <= maxSize)
      ? myString
      : '${myString.substring(0, maxSize - 4)}... ';
  while (texto.length < maxSize) {
    texto += ' ';
  }
  return texto;
}
