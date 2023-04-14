import 'package:flutter/material.dart';

class Pantalla extends StatelessWidget {
  const Pantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pantalla nueva'),
      ),
    body: Center(child: Text('hola mundo again'))
    );
  }
}
