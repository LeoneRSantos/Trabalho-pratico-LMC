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
