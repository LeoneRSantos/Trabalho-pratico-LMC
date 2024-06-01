import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';

class TelaDoJogo extends StatefulWidget {
  const TelaDoJogo({super.key, required this.atributos, required this.metodos, required this.instancia});
  final List<String> atributos;
  final List<String> metodos;
  final List<String> instancia;
  @override
  State<TelaDoJogo> createState() => _TelaDoJogoState();
}

class _TelaDoJogoState extends State<TelaDoJogo> {

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
                itemCount: widget.atributos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${widget.atributos[index]}'),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('${widget.atributos[index]}');
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
                itemCount: widget.metodos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textos(texto: '${widget.metodos[index]}'),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint('${widget.metodos[index]}');
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
                itemCount: widget.instancia.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textos(texto: '${widget.instancia[index]}'),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                debugPrint('${widget.instancia[index]}');
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
    );
  }
}
