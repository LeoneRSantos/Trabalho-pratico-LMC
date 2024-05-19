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
  List<String> retornarAtributos() {
    return _listaDeClasses;
  }

  @override
  int retornarQuantidadeDeAtributos() {
    return _listaDeClasses.length;
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
