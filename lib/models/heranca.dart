import 'package:jogo_sobre_poo/models/tipo.dart';

class Heranca implements Tipo {
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
  int retornarTipo() => 2;

  String retornarAtributos(int indice) {
    return _listaDeClasses[indice];
  }

  int retornarQuantidadeDeAtributos() {
    return _listaDeClasses.length;
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
