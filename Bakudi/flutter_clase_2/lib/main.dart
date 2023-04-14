import 'package:flutter/material.dart';
import 'package:flutter_clase_2/src/Rodes/rutas.dart';

import 'src/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: rutas(),
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
    );
  }
}

