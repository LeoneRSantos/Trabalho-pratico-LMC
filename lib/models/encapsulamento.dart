class Encapsulamento {
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

  String retornarAtributos(int indice) {
    return _listaDeAtributos[indice];
  }

  int retornarQuantidadeDeAtributos() {
    return _listaDeAtributos.length;
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
