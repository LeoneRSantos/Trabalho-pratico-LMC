import 'package:jogo_sobre_poo/models/interface_jogo.dart';

class Encapsulamento implements InterfaceJogo {
  final List<String> _listaDeAtributos = [
    'String _nome = \'nome\';',
    'final String nome = \'nome\';',
    'late String nome = \'nome\';'
  ];

  final List<String> _listaDeMetodos = [
    'get getNome() => nome;',
    'String getNome(){}',
    'String getNome(nome) => nome'
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
