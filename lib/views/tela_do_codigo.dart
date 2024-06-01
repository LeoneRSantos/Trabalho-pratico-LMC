import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/provider/codigo_provider.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';
import 'package:provider/provider.dart';

class TelaDoCodigo extends StatefulWidget {
  const TelaDoCodigo({super.key});

  @override
  State<TelaDoCodigo> createState() => _TelaDoCodigoState();
}

class _TelaDoCodigoState extends State<TelaDoCodigo> {

  @override
  Widget build(BuildContext context) {

  final CodigoProvider codigos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF189AB4),
        title: const Center(
          child: Text('Código'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Textos(
                  texto:
                      'Class Pessoa { \n\n ${codigos.code.getLista(0)} \n ${codigos.code.getLista(1)} \n\n } \n\n'),
              Textos(
                  texto: 'void main() { \n\n ${codigos.code.getLista(2)} \n\n } \n\n'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Finalizar');
                },
                child: Text(
                  'Finalizar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
