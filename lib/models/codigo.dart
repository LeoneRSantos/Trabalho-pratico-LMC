class Codigo {
  List<String> _listaDeCodigo = ['','',''];

  void adicionarCodigoAtributo(String trecho){ 
    _listaDeCodigo[0] = trecho;
  }

  void adicionarCodigoMetodo(String trecho){ 
    _listaDeCodigo[1] = trecho;
  }

  void adicionarCodigoMain(String trecho){ 
    _listaDeCodigo[2] = trecho;
  }

  List<String> getLista() => _listaDeCodigo;
}