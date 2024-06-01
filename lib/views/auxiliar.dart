import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/models/classes_metodos_e_objetos.dart';
import 'package:jogo_sobre_poo/views/home.dart';
import 'package:jogo_sobre_poo/views/tela_de_poo.dart';
import 'package:jogo_sobre_poo/views/tela_do_codigo.dart';
import 'package:jogo_sobre_poo/views/tela_do_jogo.dart';

class Auxiliar extends StatefulWidget {
  const Auxiliar(
      {super.key,
      required this.atributos,
      required this.metodos,
      required this.instancia});

  final List<String> atributos;
  final List<String> metodos;
  final List<String> instancia;

  @override
  State<Auxiliar> createState() => _AuxiliarState();
}

class _AuxiliarState extends State<Auxiliar> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  void setPagina(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){ 
         Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TelaDoCodigo(),
                      ),
                    );
        }, icon: Icon(Icons.add),),
      ),
      body: PageView(
        children: [
          TelaDoJogo(
              atributos: widget.atributos,
              metodos: widget.metodos,
              instancia: widget.instancia),
          TelaDoCodigo(),
        ],
        onPageChanged: setPagina,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        onTap: (valor) {
          setState(() {
            pc.animateToPage(valor,
                duration: Duration(milliseconds: 400), curve: Curves.ease);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.games_rounded), label: 'Jogo'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Código'),
        ],
      ),
    );
  }
}
