import 'package:jogo_sobre_poo/models/interface_jogo.dart';

class ClassesMetodosEObjetos implements InterfaceJogo {
  final List<String> _listaDeAtributos = [
    'int final _nome = \'nome\';',
    'final String nome = \'nome\';',
    'late String nome = nome;'
  ];

  final List<String> _listaDeMetodos = [
    'int falar() => \'Oi, olá!\';',
    'String falar(){return \'Oi, olá!\'}',
    'String falar(2345) => 2345'
  ];

  final List<String> _listaDeInstancias = [
    'Pessoa() p = Pessoa();',
    'new Pessoa() = pessoa;',
    'pessoa = Pessoa();'
  ];

  @override
  List<String> retornarAtributos() {
    return _listaDeAtributos;
  }

  @override
  int retornarQuantidadeDeAtributos() {
    return _listaDeAtributos.length;
  }

  @override
  List<String> retornarMetodos() {
    return _listaDeMetodos;
  }

  @override
  int retornarQuantidadeDeMetodos() {
    return _listaDeMetodos.length;
  }

  @override
  List<String> retornarInstancias() {
    return _listaDeInstancias;
  }

  @override
  int retornarQuantidadeInstancias() {
    return _listaDeInstancias.length;
  }
}
