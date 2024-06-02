import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/models/codigo.dart';

class CodigoProvider with ChangeNotifier {
  Codigo code = Codigo();

  void adicionarCodigoAtributo(String codigo) {
    code.adicionarCodigoAtributo(codigo);

    debugPrint(codigo);

    notifyListeners();
  }

  void adicionarCodigoMetodo(String codigo) {
    code.adicionarCodigoMetodo(codigo);

    debugPrint(codigo);

    notifyListeners();
  }

  void adicionarCodigoInstancia(String codigo) {
    code.adicionarCodigoMain(codigo);

    debugPrint(codigo);

    notifyListeners();
  }

  Text mensagemGanhou(){ 
    notifyListeners();

    return Text('Ganhou');
  }
}
