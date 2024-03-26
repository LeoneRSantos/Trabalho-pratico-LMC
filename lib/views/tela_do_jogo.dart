import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';
import 'package:jogo_sobre_poo/widgets/lista_de_atributos.dart';

class TelaDoJogo extends StatefulWidget {
  const TelaDoJogo({super.key});

  @override
  State<TelaDoJogo> createState() => _TelaDoJogoState();
}

class _TelaDoJogoState extends State<TelaDoJogo> {
  @override
  Widget build(BuildContext context) {
    int _indiceAtual = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Jogo sobre POO')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Textos(texto: 'Escolha os atributos'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amber,
                      width: 200,
                    ),
                  );
                }),
          ),
          Textos(texto: 'Escolha os métodos'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amber,
                      width: 200,
                    ),
                  );
                }),
          ),
          Textos(texto: 'Escolha o main'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amber,
                      width: 200,
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (int valor){ 
          _indiceAtual = valor;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.games_rounded), label: 'Jogo'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Código'),
        ],
      ),
    );
  }
}
