import 'package:jogo_sobre_poo/models/tipo.dart';

class Polimorfismo implements Tipo {
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
  int retornarTipo() => 3;

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
