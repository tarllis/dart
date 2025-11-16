import 'dart:io';

void main() {

  getComando();
  
}

String getComando(){
  print("Digite um comando: 1 - Adicionar Nota, 2 - Listar Notas, 3 - Sair");
  List<String> comandos = <String> ["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {

    print("Comando inválido");
    
  }
  return entrada!;
}
