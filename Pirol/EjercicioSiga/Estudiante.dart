import 'Util.dart';
import 'dart:io';

class Estudiante{
  final int codigo;
  final int codPlan;
  final String nombre;
  final String apellido;
  final List<double> notas;

  Estudiante({
    this.codigo = 0,
    this.codPlan = 0,
    this.nombre = '',
    this.apellido = '',
    notas,
  }):notas = List.filled(4, 0); // Constructor DEBE terminar con ;

  set codigo(int? codigo){
    if(codigo == null){
      this.codigo = Util().leerInt("Digite el codigo:\n");
    }
    else{
      this.codigo = codigo;
    }
  }

  set codPlan(int? codPlan){
    if(codPlan == null){
      this.codPlan = Util().leerInt("Digite el codigo de la materia:\n");
    }
    else{
      this.codPlan = codPlan;
    }
  }

  set nombre(String? nombre){
    if(nombre == null){
      this.nombre = stdin.readLineSync(); 
    }
    else{
      this.nombre = nombre;
    }
  }

  set apellido(String? apellido){
    if(apellido == null){
      this.apellido = stdin.readLineSync();
    }  
      this.apellido = apellido;
  }

  set notas(List? notas){
    if(notas == null){
      for( int i = 0; i < 3; i++){
      this.notas[i] = Util().leerDouble("Digite la nota ${i+1}");
    }
    this.notas[3] = this.notas[0] * 0.3 + this.notas[1] * 0.3 + this.notas[2] * 0.4;
    }
    else{
      this.notas = notas;
    }
  }

  @override
  String toString() {
    return '''Estudiante: ${this.nombre} ${this.apellido}
Codigo: ${this.codigo}
Materia: ${this.codPlan}
Notas: ${notas}''';
  }
}