import 'package:poo/src/humano.dart';

class Pessoa extends Humano {
  String nome;
  int idade;
  String sexo;

  // final => significa que a variavel pode ser instanciado uma vez
  final String otherNome = 'Gondim';

  Pessoa({
    this.nome,
    this.idade,
    this.sexo,
  });
}
