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

    List<String> listaDeAtributos = [
      'String _nome = \'nome\';',
      'final String nome = \'nome\';',
      'late String nome = \'nome\';'
    ];

    List<String> listaDeMetodos = [
      'get getNome() => nome;',
      'String getNome(){}',
      'String getNome(nome) => nome'
    ];

    List<String> listaDeInstancias = [
      'Pessoa() p = Pessoa();',
      'new Pessoa() = pessoa;',
      'pessoa = Pessoa();'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF189AB4),
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
                itemCount: listaDeAtributos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${listaDeAtributos[index]}'),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('${listaDeAtributos[index]}');
                                },
                                child: const Text(
                                  'Usar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFD4F1F4),
                      ),
                      width: 200,
                      height: 400,
                    ),
                  );
                }),
          ),
          Textos(texto: 'Escolha os métodos'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listaDeMetodos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${listaDeMetodos[index]}'),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint('${listaDeAtributos[index]}');
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: const Text(
                                  'Usar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFD4F1F4),
                      ),
                      width: 200,
                    ),
                  );
                }),
          ),
          Textos(texto: 'Escolha a instância'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listaDeInstancias.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textos(texto: '${listaDeInstancias[index]}'),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ElevatedButton(
                                  onPressed: () {
                                    debugPrint('${listaDeAtributos[index]}');
                                  },
                                  child: const Text(
                                    'Usar',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                          ),
                          
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFD4F1F4),
                      ),
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
