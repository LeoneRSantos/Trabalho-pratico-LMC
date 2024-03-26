import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/routes/rotas.dart';
import 'package:jogo_sobre_poo/views/home.dart';
import 'package:jogo_sobre_poo/views/tela_de_poo.dart';
import 'package:jogo_sobre_poo/views/tela_do_jogo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo sobre POO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Aileron',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade900),
        useMaterial3: true,
      ),
      routes: {
        Rotas.home: (context) => const Home(),
        Rotas.fundamentoDePoo: (context) => const TelaDeFundamento(),
        Rotas.telaDoJogo: (context) => const TelaDoJogo(),
      },
    );
  }
}
