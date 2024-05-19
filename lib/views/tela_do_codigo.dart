import 'package:flutter/material.dart';

class TelaDoCodigo extends StatefulWidget {
  const TelaDoCodigo({super.key});

  @override
  State<TelaDoCodigo> createState() => _TelaDoCodigoState();
}

class _TelaDoCodigoState extends State<TelaDoCodigo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Código'),
        ),
      ),
    );
  }
}
