import 'package:flutter/material.dart';

import '../view/nuevapantalla.dart';
import '../view/view.dart';

Map<String, WidgetBuilder> rutas(){
  return <String, WidgetBuilder>{
    'home' :(context) => Home(),
    'suma' :(context) => Suma(),
    'pantalla' :(context) => Pantalla()
  };
}