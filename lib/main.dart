import 'package:flutter/material.dart';
import 'package:jogo_sobre_poo/provider/codigo_provider.dart';
import 'package:jogo_sobre_poo/routes/rotas.dart';
import 'package:jogo_sobre_poo/views/home.dart';
import 'package:jogo_sobre_poo/views/tela_de_poo.dart';
import 'package:jogo_sobre_poo/views/tela_do_jogo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CodigoProvider()),
      child: MaterialApp(
        title: 'Jogo sobre POO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            foregroundColor: Colors.grey.shade100,
          ),
          fontFamily: 'DMSans',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF05445E),
          ),
          useMaterial3: true,
        ),
        routes: {
          Rotas.home: (context) => const Home(),
          Rotas.fundamentoDePoo: (context) => const TelaDeFundamento(),
          Rotas.telaDoJogo: (context) => const TelaDoJogo(atributos: [], metodos: [], instancia: [],
              ),
        },
      ),
    );
  }
}
