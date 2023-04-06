import 'package:flutter/material.dart';

class Xuma extends StatefulWidget {
  const Xuma({super.key});

  @override
  State<Xuma> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Xuma> {
  int? numero1;
  int? numero2;
  int? suma;

  void setNumero1(String num){
    setState(() {
      numero1 = isNumeric(num) ? int.parse(num) : 0;  
    });
  }

  void setNumero2(String num){
    setState(() {
      numero2 = isNumeric(num) ? int.parse(num) : 0;  
    });
  }

  void zuma(){
    setState(() {
      suma = (numero1 ?? 0) + (numero2 ?? 0);
    });
  }

  bool isNumeric(String value){
    return double.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xuma')),
      body: Column(children: [
        TextField(
          onChanged:(value) => setNumero1(value),
          decoration: const InputDecoration(
          prefixIcon: Icon(Icons.tag)),
        ),
        TextField(
          onChanged: (value) => setNumero2(value),
          decoration: const InputDecoration(
          prefixIcon: Icon(Icons.tag)),
        ),
        ElevatedButton(
          onPressed: () => zuma(), 
          child: Text('${suma ?? 'Resultado'}'))
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () => zuma(),
        child: const Icon(Icons.done),
      ),
    );
    
  }
}