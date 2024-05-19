import 'package:jogo_sobre_poo/models/interface_jogo.dart';

class Polimorfismo implements InterfaceJogo {
  final List<String> _listaDeClasses = [
    'class Carro extends Veiculo{ }',
    'class Carro implements Veiculo{ }',
    'Class Veiculo expands Carro{ };'
  ];

  final List<String> _listaDeMetodos = [
    '@deprecated\n String seLocomover => \'O carro está na estrada.\';',
    '@override\n String seLocomover => \'O carro está na estrada.\';',
    '@ovewrite\n String seLocomover() => \'O carro está na estrada.\';'
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
