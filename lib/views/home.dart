import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/widgets/componente_textos.dart';

import '../routes/rotas.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle texto =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700);

  ButtonStyle botoes =
      const ButtonStyle(elevation: MaterialStatePropertyAll(0.8));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                    child: Textos(
                  texto: "Escolha seu nível de dificuldade.",
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: botoes,
                  onPressed: () { 
                    Navigator.of(context).pushNamed(Rotas.fundamentoDePoo);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Fácil',
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
                    Navigator.of(context).pushNamed(Rotas.fundamentoDePoo);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Médio',
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
                    Navigator.of(context).pushNamed(Rotas.fundamentoDePoo);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Difícil',
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
