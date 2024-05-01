import 'package:jogo_sobre_poo/models/tipo.dart';
class ClassesMetodosEObjetos implements Tipo{

  final List<String> _listaDeAtributos = [
    'int final _nome = \'nome\';',
    'final String nome = \'nome\';',
    'late String nome = nome;'
  ];

  final List<String> _listaDeMetodos = [
    'int falar() => \'Oi, olá!\';',
    'String falar(){}',
    'String falar(2345) => 2345'
  ];

  final List<String> _listaDeInstancias = [
    'Pessoa() p = Pessoa();',
    'new Pessoa() = pessoa;',
    'pessoa = Pessoa();'
  ];

  @override
  int retornarTipo() => 0;

  String retornarAtributos(int indice) {
    return _listaDeAtributos[indice];
  }

  int retornarQuantidadeDeAtributos() {
    return _listaDeAtributos.length;
  }

  String retornarMetodos(int indice) {
    return _listaDeMetodos[indice];
  }

  int retornarQuantidadeDeMetodos() {
    return _listaDeMetodos.length;
  }

  String retornarInstancias(int indice) {
    return _listaDeInstancias[indice];
  }

  int retornarQuantidadeInstancias() {
    return _listaDeInstancias.length;
  }
}
