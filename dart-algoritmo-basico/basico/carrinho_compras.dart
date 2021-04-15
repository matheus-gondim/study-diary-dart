import 'dart:io' as IO;

void main() {
  List<String> produtos = [];
  bool condicao = true;

  do {
    print('======== ADICIONE UM PRODUTO ========');
    String input = IO.stdin.readLineSync() ?? '';
    if (input.toUpperCase() == 'SAIR') {
      print('======== FIM DO PROGRAMA ========');
      condicao = false;
    } else if (input.toUpperCase() == 'IMPRIMIR') {
      imprimirItens(produtos);
    } else if (input.toUpperCase() == 'REMOVER') {
      removerItem(produtos);
    } else {
      produtos.add(input);
      print("\x1B[2J\x1B[0;0H");
    }
  } while (condicao);
}

imprimirItens(List<String> itens) {
  for (var i = 0; i < itens.length; i++) print('Item $i - ${itens[i]}');
}

removerItem(List<String> itens) {
  print('==== Qual intem deseja remover? =====');
  imprimirItens(itens);
  int index = int.parse(IO.stdin.readLineSync() ?? '0');
  itens.removeAt(index);
  print("=====  ITEM REMOVIDO =====");
}
