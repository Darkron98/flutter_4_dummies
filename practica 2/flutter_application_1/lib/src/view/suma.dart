import 'package:flutter/material.dart';

class Suma extends StatefulWidget {
  const Suma({super.key});

  @override
  State<Suma> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  int? numero1;
  int? numero2;
  int? resultado;

  void setNumero1(String numero) {
    setState(() {
      numero1 = isNumeric(numero) ? int.parse(numero) : 0;
    });
  }

  void setNumero2(String numero) {
    setState(() {
      numero2 = isNumeric(numero) ? int.parse(numero) : 0;
    });
  }

  void suma() {
    setState(() {
      resultado = (numero1 ?? 0) + (numero2 ?? 0);
    });
  }

  bool isNumeric(String value) {
    return double.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('suma')),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => setNumero1(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.tag),
            ),
          ),
          TextField(
            onChanged: (value) => setNumero2(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.tag),
            ),
          ),
          ElevatedButton(
              onPressed: () => suma(),
              child: Text('${resultado ?? 'Resultado'}'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => suma(),
        child: const Icon(Icons.done),
      ),
    );
  }
}
