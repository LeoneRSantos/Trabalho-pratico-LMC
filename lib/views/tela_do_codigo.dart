import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';

class TelaDoCodigo extends StatefulWidget {
  const TelaDoCodigo(
      {super.key,
      required this.atributo,
      required this.metodo,
      required this.instancia});

  final String atributo;
  final String metodo;
  final String instancia;

  @override
  State<TelaDoCodigo> createState() => _TelaDoCodigoState();
}

class _TelaDoCodigoState extends State<TelaDoCodigo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF189AB4),
        title: const Center(
          child: Text('Código'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Textos(
                texto:
                    'Class Pessoa { \n\n final String nome; \n get getNome () => nome; \n\n } \n\n'),
            Textos(texto: 'void main() { \n\n Pessoa p = Pessoa(); \n\n } \n\n'),

            ElevatedButton(onPressed: (){debugPrint('Finalizar');}, child: Text('Finalizar', style: TextStyle( 
              fontWeight: FontWeight.bold,
            ),),
            )
          ],
        ),
      ),
    );
  }
}
