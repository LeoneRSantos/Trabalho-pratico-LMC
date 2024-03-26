import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 16.0),
    );
  }
}