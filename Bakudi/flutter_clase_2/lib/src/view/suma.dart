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
  String? nombre;
  int? grupo;
  int? codigo;
  int? nota;


//funcion que crea un alertdialog

void showAlertDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Información"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Nombre: ${nombre ?? ''}"),
        Text("Código: ${codigo ?? ''}"),
        Text("Grupo: ${grupo ?? ''}"),
        Text("Nota: ${nota ?? ''}"),
      ],
    ),
    actions: [
      TextButton(
        child: Text("Cerrar"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}




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

  void setnombre(String texto){
    setState(() {
      nombre = texto;
    });
  }


  void setgrupo(String numero){
    setState(() {
      grupo = isnumeric(numero) ? int.parse(numero): 0;
    });
  }

  void setcodigo(String numero){
    setState(() {
      codigo = isnumeric(numero) ? int.parse(numero): 0;
    });
  }

  void setnota(String numero){
    setState(() {
      nota = isnumeric(numero) ? int.parse(numero): 0;
    });
  }

  

  bool isnumeric(String value){
 return double.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cualquiera'),
        
        //boton que permite ejecutar el alertdialog
        actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            showAlertDialog(context);},),]
      
      
      ),
      body: Column(children: [
        TextField(
          onChanged: (value) => setnumero1(value) ,
          decoration: const InputDecoration(prefixIcon: Icon(Icons.tag)),
          // decoration: hintext
          ),
TextField(
  onChanged: (value) => setnumero2(value) ,
          decoration: const InputDecoration(prefixIcon: Icon(Icons.tag)),
          
          ),//ElevatedButton(
            //onPressed: () => suma(),
          //child: Text('${resultado ?? 'resultado'}')
          //),
          TextField(
            onChanged: (value) => setgrupo(value),
            decoration: const InputDecoration (hintText: 'grupo'),
          ),
          TextField(
            onChanged: (value) => setcodigo(value),
            decoration: const InputDecoration (hintText: 'codigo'),
          ),
          TextField(
            onChanged: (value) => setnota(value),
            decoration: const InputDecoration (hintText: 'nota'),
          ),
          TextField(
            onChanged: (value) => setnombre(value),
            decoration: const InputDecoration (hintText: 'nombre'),
          ),
          

      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => suma(),
        child:
         const Icon(Icons.done),
      ),
      

    );
  
  }
}

