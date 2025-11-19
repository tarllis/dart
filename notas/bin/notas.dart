import 'dart:io';

void main() {

  List<String> notas = <String> [];
menu(notas);
  listarNotas(notas);
  
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

List <String> adicionaNota(List<String> notas) {

print("Escreva uma nota.");
String? nota = "";

nota = stdin.readLineSync();

if(nota == null || nota.isEmpty){

  print("Não é possivel adicionar uma nota vazia");
  adicionaNota(notas);
}
notas.add(nota!);

return notas;

}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {

  print("");

  cabecalho();

  print("");

  String comando = getComando();

  print("");

  switch (comando) {
    case "1":
    adicionaNota(notas);
    menu(notas);

    case "2":
    listarNotas(notas);
    menu(notas);

    case "3":
    print("Até breve");
  }
}

void cabecalho(){

print("echo   #     #                          ######                      ");
print( "##    #  ####  #####   ##    ####     #     #   ##   #####  ##### ");
print( "# #   # #    #   #    #  #  #         #     #  #  #  #    #   #   ");
print(" #  #  # #    #   #   #    #  ####     #     # #    # #    #   #   ");
print(" #   # # #    #   #   ######      #    #     # ###### #####    #   ");
print(" #    ## #    #   #   #    # #    #    #     # #    # #   #    #   ");
print(" #     #  ####    #   #    #  ####     ######  #    # #    #   #   ");

print("                                                                   ");

}