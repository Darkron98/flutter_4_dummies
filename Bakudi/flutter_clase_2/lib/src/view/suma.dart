import 'package:flutter/material.dart';

class Suma extends StatefulWidget {
  const Suma({super.key, required this.title});
  
  final String title;

  @override
  State<Suma> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  int? numero1;
  int? numero2;
  int? resultado;

  void suma(){
    setState(() {
      resultado = (numero1 ?? 0) + (numero2 ?? 0);
    });
  }
  void setnumero1(String numero){
    setState(() {
      numero1 = isnumeric(numero) ? int.parse(numero): 0;
    });
  }
  void setnumero2(String numero){
    setState(() {
      numero2 = isnumeric(numero) ? int.parse(numero): 0;
    });
  }

  bool isnumeric(String value){
 return double.tryParse(value) != null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        TextField(
          onChanged: (value) => setnumero1(value) ,
          decoration: const InputDecoration(prefixIcon: Icon(Icons.tag)),
          
          ),
TextField(
  onChanged: (value) => setnumero2(value) ,
          decoration: const InputDecoration(prefixIcon: Icon(Icons.tag)),
          
          ),
          ElevatedButton(
            onPressed: () => suma(),
          child: Text('${resultado ?? 'resultado'}')
          )


      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => suma(),
        child: const Icon(Icons.done),
      
      ),



    );
  }
}