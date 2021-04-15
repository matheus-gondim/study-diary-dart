import 'dart:io' as IO;

void calculoIdade() {
  print('===== Digite uma idade =====');
  var input;

  do {
    input = IO.stdin.readLineSync();

    if (int.tryParse(input) == null) {
      input = null;
      print("Digite um número");
    }
  } while (input == null || input == '');

  var idade = int.tryParse(input);

  var result = validIdade(idade);
  print(result);
}

String validIdade(int idade) {
  if (idade >= 50) return "Melhor idade";
  if (idade >= 18) return "Adulto";
  if (idade >= 12) return "Adolecente";
  return "Criança";
}
