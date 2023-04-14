import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pantalla nueva'),
      ),
    body: 
     Column(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, 'suma');
        },
         child: Text('suma')),

         ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, 'pantalla');
         },
          child: Text('pantalla'))
      ],
     ),
    );
  }
}