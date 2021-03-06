//Ex. de argumentos: dart lib/main.dart matheus "outra coisa"
// matheus "outra coisa" seria duas posições na lista de arguments
import 'package:estudo/src/cadastro.dart';
import 'package:estudo/src/calculo_idade.dart';
import 'package:estudo/src/calculo_imc.dart';
import 'package:estudo/src/carrinho_compras.dart';

void main(List<String> arguments) {
  if (arguments[0] == 'calculo-idade') {
    calculoIdade();
  } else if (arguments[0] == 'carrinho-compras') {
    carrinhoCompras();
  } else if (arguments[0] == 'imc') {
    calculateImc();
  } else if (arguments[0] == 'cadastro') {
    cadastrarPessoa();
  } else {
    print('==== ESSE PROGRAMA NÃO EXISTE');
  }
}
