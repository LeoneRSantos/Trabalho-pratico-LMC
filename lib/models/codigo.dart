class Codigo {
  List<String> _listaDeCodigo = ['','',''];

  void adicionarCodigo(String trecho){ 
    _listaDeCodigo.add(trecho);
  }

  List<String> getLista(int index) => [_listaDeCodigo[index]];
}