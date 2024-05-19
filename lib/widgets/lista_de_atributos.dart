import 'package:flutter/material.dart';

class ListaDeAtritubos extends StatelessWidget {
  const ListaDeAtritubos({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(child: Icon(Icons.person)),
          Card(child: Icon(Icons.person)),
          Card(child: Icon(Icons.person)),
        ],
      ),
    );
  }
}
