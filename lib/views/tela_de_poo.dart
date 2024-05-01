import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/views/tela_do_jogo.dart';
import '../routes/rotas.dart';

class TelaDeFundamento extends StatefulWidget {
  const TelaDeFundamento({super.key});

  @override
  State<TelaDeFundamento> createState() => _TelaDeFundamentoState();
}

class _TelaDeFundamentoState extends State<TelaDeFundamento> {
  TextStyle texto =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700);

  ButtonStyle botoes =
      const ButtonStyle(elevation: MaterialStatePropertyAll(0.8));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF189AB4),
        title: const Center(child: Text('Jogo sobre POO')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Center(
                    child: Text(
                  "Escolha o fundamento de POO.",
                  style: TextStyle(fontSize: 16.0),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: botoes,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TelaDoJogo(tipoDeFundamento: 0),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Classes, métodos e objetos',
                      style: texto,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: botoes,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TelaDoJogo(tipoDeFundamento: 1),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Encapsulamento',
                      style: texto,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: botoes,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TelaDoJogo(tipoDeFundamento: 2),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Herança',
                      style: texto,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: botoes,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TelaDoJogo(tipoDeFundamento: 3),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Polimorfismo',
                      style: texto,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
