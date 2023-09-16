import 'dart:io';

void adicionar(Map<String, String> meusContatos) {
  //digitar nome
  print("Digite o nome");
  final nome = stdin.readLineSync()!;
  //digitar o número
  print("Digite o número");
  final numero = stdin.readLineSync()!;
  //verificar se já existe
  //se já existe, dar mensagem de erro e acabar
  //se não existe, adicionar e falar que deu certo
  if (meusContatos.containsKey(nome)) {
    print("Usuário já existe. Seu número é ${meusContatos[nome]}");
  } else {
    meusContatos.addAll({nome: numero});
    print("Cadastro efetuado com sucesso!");
  }
}

void listarTodos(Map<String, String> meusContatos) {
  // for (final entry in meusContatos.entries) {
  //   print("${entry.key}: ${entry.value}");
  //   print("****************************");
  // }
  meusContatos.forEach((key, value) {
    print("$key: $value");
    print("****************************");
  });
}

void atualizar(Map<String, String> meusContatos) {
  //o usuário digita nome e número
  print("Digite o nome do contato cujo número você deseja atualizar");
  final nome = stdin.readLineSync()!;
  //se o nome existir, atualiza o número
  //se o nome não existir, avisa que não existe
  if (meusContatos.containsKey(nome)) {
    print("Então digite o número novo");
    final numero = stdin.readLineSync()!;
    meusContatos.update(nome, (value) => numero);
  } else {
    print("Esse nome não está na agenda");
  }
}

void remover(Map<String, String> meusContatos) {
  //pegar o nome do contato a ser removido
  print("Digite o nome da pessoa que você quer excluir da agenda");
  final nome = stdin.readLineSync()!;
  //verificar se existe
  //se existe, remove e avisa
  //se não existe, avisa que não existe
  if (meusContatos.containsKey(nome)) {
    meusContatos.removeWhere((key, value) => key == nome);
    print("Ok, removeu");
  } else {
    print("Esse nome não está na agenda");
  }
}

void main() {
  Map<String, String> meusContatos = {'Pedro': '12345678'};
  List<Map<String, String>> meusContatosV2 = [
    {"nome": "Ana", "numero": "12345789"},
    {"nome": "Pedro", "numero": "12345789"},
  ];

  meusContatosV2.add({"nome": "João", "numero": "456789"});
  const menu = '1-C\n2-R\n3-U\n4-D\n5-Sair';
  int op;
  do {
    print(menu);
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        adicionar(meusContatos);
      case 2:
        listarTodos(meusContatos);
      case 3:
        atualizar(meusContatos);
      case 4:
        remover(meusContatos);
      case 5:
        print("Até logo");
      default:
        print("Opção inválida");
    }
  } while (op != 5);
}

// void main() {
//   var pessoa = <String, Object>{'nome': "Pedro", 'idade': 22};

//   //keys
//   final keys = pessoa.keys;
//   for (final key in keys) {
//     print(key);
//     print(pessoa[key]);
//   }
//   //values
//   final values = pessoa.values;
//   for (final value in values) {
//     print(value);
//   }
//   //entries
//   final entries = pessoa.entries;
//   for (final entry in entries) {
//     print(entry);
//     print(entry.key);
//     print(entry.value);
//   }

//   // var pessoa = <String, dynamic>{'nome': 'Pedro', 'idade': 22};
//   // print(pessoa.runtimeType);
//   // var nome = pessoa['idade'] as String;
//   // nome.
//   // print(pessoa['nome completo']);
//   // print(pessoa.nome completo);
//   // var pessoa = {'nome': 'Ana', 'idade': 22};
//   // print(pessoa['nome']);
//   // print(pessoa.nome);não tem ponto para mapas
//   // type annotation
//   // var pessoa = <String, String>{"nome": "Ana"};
//   // Map<String, String> pessoa2 = {};
//   // // pessoa.addAll({'nome': 'Pedro', 'sobrenome': 'Silva'});
//   // print(pessoa);

//   // var lembretes = <String> {1: "Fazer compras", 2: 'ver um filme'};
// }

// // void main(List<String> arguments) {
// // var portugues = {'Brasil', 'Portugal'};
// // var europa = {'Alemanha', 'Portugal', 'Espanha'};

// //   var pais1 = portugues.union(europa);

// //   print ("Todos os paises que falam portugues e todos da europa");
// //   print(pais1);

// //   var pais2 = portugues.intersection(europa);

// //   print ("Todos os países em que se fala português e que são europeus.");
// //   print(pais2);

// //   var pais3 = portugues.difference(europa);

// //   print ("Todos os países em que se fala português e que não são europeus.");
// //   print(pais3);

// // }

// // void main() {
// //   var A = {1, 2, 3, 4, 5, 6};
// //   var B = {1, 3, 7};
// //   print(A.union(B)); //1, 2, 3, 4, 5, 6, 7
// //   print(A.intersection(B)); //1, 3
// //   print(A.difference(B)); //2, 4, 5, 6
// //   print(B.difference(A)); //7
// //   print(A.difference(A)); //{}

// //   print((A.union(B)).difference(A.intersection(B)));
// // }

// // void main() {
// //   var nomes = {'Pedro', 'João'};
// //   print(nomes.elementAt(0));

// //   //for each
// //   for (var nome in nomes) {
// //     print(nome);
// //   }

// //   for (var i = 0; i < nomes.length; i++) {
// //     print(nomes.elementAt(i));
// //   }
// // }

// // void main() {
// //   // [1, 2] != [2, 1] != [1, 2, 2]
// //   //{1, 2} = {2, 1} = {1, 2, 2} = {2, 2, 2, 2, 2, 1, 1, 2, 1, 2, 1}
// //   var nomes = {'Ana', 'João'};
// //   print(nomes);
// //   print(nomes.runtimeType);

// //   var paises = {'Brasil', 'Brasil'};
// //   print(paises);

// //   var oQueEhIsso = {}; //isso é um mapa
// //   print(oQueEhIsso.runtimeType);
// // }

// // void main() {
// //   var tupla = ('Ana', 18, true);
// //   print(tupla);
// //   print(tupla.runtimeType);

// //   print(tupla.$1);
// //   print(tupla.$2);
// //   // print(tupla.$4);
// // }

// // void main(){
// //   // List<int> lista = [1, 2, 3];

// //   // List < List <int> > matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];

// //   // List < List < List <int> > > cubo = [[[1, 2],[3, 4]], [[5, 6],[7, 8]]];

// //   // List<List<List>> a;

// //   dynamic b = "abc";
// //   b.falar();

// // }

// // void main() {
//   // List<List<List<int?>?>?>? lista;

//   // List<String?>? lista = [null];
//   // List<String>? eAGora = [null];
//   // List<String?> nomes4 = null;
//   // List<String> nomes3 = [];
//   // nomes3.add(null);
//   // var nomes2 = [];
//   // print(nomes2.runtimeType);
//   // nomes2.add(null);
//   // nomes2.add(1);
//   // nomes2.add(true);
//   // var nomes1 = ["Ana", "Pedro", null];
//   // print(nomes1.runtimeType);
//   // nomes1.add(null);

//   // const nomes = ["Ana", "João"];
//   // nomes[0] = "PEdro";

//   // declaração de coleções com final
//   // final nomes = ['Ana', 'Pedro'];
//   // // nomes = [];
//   // nomes[0] = "Ana Paula";
//   // nomes.add("Jaqueline");
// // }

// // void main(List<String> arguments) {
// //   var lista = ['Ana', 'Pedro', 'Ana'];
// //   lista.removeWhere((element) => element == "Ana");
// //   print(lista);
// //   //type annotation
// //   // var somenteStrings = <String>[];
// //   // List lista = [];
// //   // print(lista.runtimeType);
// //   // lista.add(true);
// //   // print(lista.runtimeType);
// //   // lista.add("Ana");
// //   // print(lista.runtimeType);
// //   // List<String> nomes = ['Ana'];
// //   // List<bool> maiores = [true, false, true];
// //   // var nomes = ['Ana', 'João', 'Maria'];
// //   // nomes.add('Cristina');
// //   // nomes.insert(0, 'Ana Maria');
// //   // nomes.insert(2, 'Pedro');
// //   // nomes.insert(6, 'Rodrigo');
// //   // nomes.insert(nomes.length, 'José');
// //   // print(nomes);

// //   // var itensDiversos = [2, 2.5];
// //   // print(itensDiversos.runtimeType);
// //   //escreva um programa que some os numeros passados como argumentos na linha de comando
// //   //e mostre o resultado
// //   // var acumulador = 0;
// //   // for (final valor in arguments) {
// //   //   acumulador = acumulador + int.parse(valor);
// //   // }
// //   // print(acumulador);
// //   // print(arguments
// //   //     .map((e) => int.parse(e))
// //   //     .reduce((value, element) => value + element));
// // }
