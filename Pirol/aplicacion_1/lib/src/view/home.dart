import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _ceroCounter() {
    setState(() {
      _counter=0;
    });
  }

  void _decreaseCounter() {
    if(_counter > 0){
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Numero de ataques de ansiedad',
            ),
            
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Menos
          FloatingActionButton(
            onPressed: _decreaseCounter,
            tooltip: 'Decrease',
            child: const Icon(Icons.remove), //Se pueden buscar los iconos poniendo material icons en google
          ),
          //Cero
          FloatingActionButton(
            onPressed: _ceroCounter,
            tooltip: 'Cero',
            child: const Icon(Icons.west), 
          ),
          //Mas
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), 
    );
  }
}