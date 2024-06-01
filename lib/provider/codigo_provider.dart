import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/models/codigo.dart';

class CodigoProvider with ChangeNotifier {

  Codigo code = Codigo();
  

  void adicionarCodigo(String codigo){ 
    code.adicionarCodigo(codigo);

    debugPrint(codigo);

    notifyListeners();
  }
}