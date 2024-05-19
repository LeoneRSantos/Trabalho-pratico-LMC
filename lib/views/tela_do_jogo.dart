import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogo_sobre_poo/models/classes_metodos_e_objetos.dart';
import 'package:jogo_sobre_poo/models/encapsulamento.dart';
import 'package:jogo_sobre_poo/models/heranca.dart';
import 'package:jogo_sobre_poo/models/polimorfismo.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';
import 'package:jogo_sobre_poo/widgets/lista_de_atributos.dart';

class TelaDoJogo extends StatefulWidget {
  const TelaDoJogo({super.key, required this.atributos, required this.metodos, required this.instancia});
  final List<String> atributos;
  final List<String> metodos;
  final List<String> instancia;
  @override
  State<TelaDoJogo> createState() => _TelaDoJogoState();
}

class _TelaDoJogoState extends State<TelaDoJogo> {
  Encapsulamento e = Encapsulamento();
  ClassesMetodosEObjetos c = ClassesMetodosEObjetos();
  Heranca h = Heranca();
  Polimorfismo p = Polimorfismo();
  Object o = Object();

  Object verificarFundamento() {
    if (widget.tipoDeFundamento == 0) {
      o = c;
      return o;
    } else if (widget.tipoDeFundamento == 1) {
      o = e;
      return o;
    } else if (widget.tipoDeFundamento == 2) {
      o = h;
      return o;
    } else {
      o = p;
      return o;
    }
  }

  @override
  Widget build(BuildContext context) {
    int _indiceAtual = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF189AB4),
        title: const Center(child: Text('Jogo sobre POO')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Textos(texto: widget.atributos[0] == 'class Carro extends Veiculo{ }'? 'Escolha a classe': 'Escolha os atributos'),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: e.retornarQuantidadeDeAtributos(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${e.retornarAtributos(index)}'),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('${e.retornarAtributos(index)}');
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
                itemCount: e.retornarQuantidadeDeMetodos(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${e.retornarMetodos(index)}'),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint('${e.retornarInstancias(index)}');
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
                itemCount: e.retornarQuantidadeInstancias(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textos(texto: '${e.retornarInstancias(index)}'),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                debugPrint('${e.retornarInstancias(index)}');
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
        onTap: (int valor) {
          _indiceAtual = valor;
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
