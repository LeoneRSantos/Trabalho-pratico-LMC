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

    String definirTexto() {
      if (codigos.code.getLista()[0] ==
          'class Cachorro extends AnimalDeEstimacaao{ }') {
        return 'class Cachorro extends AnimalDeEstimacaao{ }';
      } else if (codigos.code.getLista()[0] ==
          'class Carro extends Veiculo{ }') {
        return 'class Carro extends Veiculo{ }';
      }

      return 'class Pessoa { \n\n ${codigos.code.getLista()[0]} \n ${codigos.code.getLista()[1]} \n\n } \n\n';
    }

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
                      'Class Pessoa { \n\n ${codigos.code.getLista()[0]} \n ${codigos.code.getLista()[1]} \n\n } \n\n'),
              Textos(
                  texto:
                      'void main() { \n\n ${codigos.code.getLista()[2]} \n\n } \n\n'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Finalizar');

                  // Classes
                  if (codigos.code.getLista()[0] ==
                          'final String nome = \'nome\';' &&
                      codigos.code.getLista()[1] ==
                          'String falar(){return \'Oi, olá!\'}' &&
                      codigos.code.getLista()[2] == 'Pessoa() p = Pessoa();') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                content: Text(
                                    'Parabéns! Você ganhou, os trechos de código escolhidos estão de acordo com os princípios da POO.'),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Fechar'),
                                  )
                                ]));
                  }

                  // Encapsulamento
                  else if (codigos.code.getLista()[0] ==
                          'String _nome = \'nome\';' &&
                      codigos.code.getLista()[1] == 'get getNome() => _nome;' &&
                      codigos.code.getLista()[2] == 'Pessoa() p = Pessoa();') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                content: Text(
                                    'Parabéns! Você ganhou, os trechos de código escolhidos estão de acordo com os princípios da POO.'),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Fechar'),
                                  )
                                ]));
                  }

                  // Herança
                  else if (codigos.code.getLista()[0] ==
                          'class Cachorro extends AnimalDeEstimacaao{ }' &&
                      codigos.code.getLista()[1] ==
                          '@override\n String latir() => \'O cachorro está latindo.\';' &&
                      codigos.code.getLista()[2] ==
                          'Cachorro() dog = Animal();') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                content: Text(
                                    'Parabéns! Você ganhou, os trechos de código escolhidos estão de acordo com os princípios da POO.'),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Fechar'),
                                  )
                                ]));
                  }

                  // Polimorfismo
                  else if (codigos.code.getLista()[0] ==
                          'class Carro extends Veiculo{ }' &&
                      codigos.code.getLista()[1] ==
                          '@override\n String seLocomover => \'O carro está na estrada.\';' &&
                      codigos.code.getLista()[2] == 'Carro() c = Veiculo();') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                content: Text(
                                    'Parabéns! Você ganhou, os trechos de código escolhidos estão de acordo com os princípios da POO.'),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Fechar'),
                                  )
                                ]));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                content: Text(
                                    'Infelizmente você perdeu, seu código não está de acordo com os princípios da POO.'),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Fechar'),
                                  )
                                ]));
                  }
                },
                child: Text(
                  'Finalizar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
