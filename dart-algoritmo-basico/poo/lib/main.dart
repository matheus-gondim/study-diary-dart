import 'package:poo/src/gato.dart';
import 'package:poo/src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa(nome: 'Matheus', idade: 24, sexo: 'M');
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);

  print(pessoa.peso);
  print(pessoa.altura);

  Gato gato = Gato(nome: 'Geoger', barulho: 'Miau');
  print(gato);
}
