import 'package:jogo_sobre_poo/models/interface_jogo.dart';

class Heranca implements InterfaceJogo {
  final List<String> _listaDeClasses = [
    'class Cachorro extends AnimalDeEstimacaao{ }',
    'class Cachorro implements AnimalDeEstimacao{ }',
    'Class AnimalDeEstimacao expands Cachorro{ };'
  ];

  final List<String> _listaDeMetodos = [
    '@deprecated\n String latir() => \'O cachorro está latindo.\';',
    '@override\n String latir() => \'O cachorro está latindo.\';',
    '@ovewrite\n String latir() => \'O cachorro está latindo.\';'
  ];

  final List<String> _listaDeInstancias = [
    'Cachorro() dog = Animal();',
    'new Animal() = cachorro;',
    'Cachorro = Cachorro();'
  ];

  @override
  String retornarAtributos(int indice) {
    return _listaDeClasses[indice];
  }

  @override
  int retornarQuantidadeDeAtributos() {
    return _listaDeClasses.length;
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
