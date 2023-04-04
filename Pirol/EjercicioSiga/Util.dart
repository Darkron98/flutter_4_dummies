
import 'dart:io';

class Util{

  int leerInt(String mensaje){
    print(mensaje);
    String? entrada = stdin.readLineSync();
    int num = int.parse('$entrada');
    return num;
  }

  double leerDouble(String mensaje){
    print(mensaje);
    String? entrada = stdin.readLineSync();
    double num = double.parse('$entrada');
    return num;
  }

}