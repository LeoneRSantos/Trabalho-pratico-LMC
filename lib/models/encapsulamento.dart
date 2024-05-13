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
