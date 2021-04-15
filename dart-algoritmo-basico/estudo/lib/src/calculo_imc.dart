import 'dart:io' as IO;

calculateImc() {
  print('====== Informe o peso(kg) ou 0 para sair ======');
  double peso = setInputNumber();
  if (peso == 0) return;

  print('===== Informe a altura(m)  ou 0 para sair =====');
  double altura = setInputNumber();
  if (altura == 0) return;

  double calc = peso / (altura * altura);

  print("============ Resultado ============");
  print(resultImc(calc));
}

String resultImc(double calc) {
  if (calc >= 40) return 'Obesidade grau 3';
  if (calc >= 35) return 'Obesidade grau 2';
  if (calc >= 30) return 'Obesidade grau 1';
  if (calc >= 25) return 'Sobre Peso';
  if (calc >= 18.5) return 'Peso Normal';
  return 'Abaixo do peso';
}

double setInputNumber() {
  String validInput = IO.stdin.readLineSync() ?? '';

  while (validInput == '' || !inputIsNumber(validInput)) {
    print("==== Informe um input númerico valido ====");
    validInput = IO.stdin.readLineSync() ?? '';
  }

  return double.parse(validInput);
}

bool inputIsNumber(String input) {
  List<int> asciiCodeOfNumbers = [46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57];

  bool result = input
      .split('')
      .map((element) => asciiCodeOfNumbers.contains(element.codeUnitAt(0)))
      .contains(false);

  return !result;
}
