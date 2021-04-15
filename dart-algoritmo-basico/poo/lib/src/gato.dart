import 'package:poo/src/aniaml.dart';

class Gato extends Animal {
  String nome;

  Gato({this.nome, barulho}) : super(barulho: barulho);

  @override
  String toString() => 'Gato(nome: $nome, barulho:$barulho)';
}
