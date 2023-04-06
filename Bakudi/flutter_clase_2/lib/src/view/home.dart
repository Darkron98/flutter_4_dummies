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
  
  void _disminuircounter(){
    setState(() {
      var ternario = _counter >= 1 ? _counter-- : 'no' ;
    });
  }

  void _restablecer(){
    setState(() {
      _counter = 0;
    });
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //mas
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _restablecer,
            tooltip: 'Increment', //bocado de texto
            child: const Icon(Icons.remove),
          ),
          
          // menos
          FloatingActionButton(
            onPressed: _disminuircounter,
            tooltip: 'Increment', //bocado de texto
            child: const Icon(Icons.remove),
          ),
        ],
      ), 
    
    
    
    );
  }
}
