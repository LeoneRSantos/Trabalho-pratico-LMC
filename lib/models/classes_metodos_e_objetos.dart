import 'package:jogo_sobre_poo/models/interface_jogo.dart';

class ClassesMetodosEObjetos implements InterfaceJogo {
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
  String retornarAtributos(int indice) {
    return _listaDeAtributos[indice];
  }

  @override
  int retornarQuantidadeDeAtributos() {
    return _listaDeAtributos.length;
  }

  @override
  String retornarMetodos(int indice) {
    return _listaDeMetodos[indice];
  }

  @override
  int retornarQuantidadeDeMetodos() {
    return _listaDeMetodos.length;
  }

  @override
  String retornarInstancias(int indice) {
    return _listaDeInstancias[indice];
  }

  @override
  int retornarQuantidadeInstancias() {
    return _listaDeInstancias.length;
  }
}
