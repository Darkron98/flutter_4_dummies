import 'dart:math';

import 'Estudiante.dart';
import 'Util.dart';

main(){
  Siga e = new Siga();
  e.menu();
}

class Siga{
  List<Estudiante> arreglo = [];

  void leerCant(){
    int tam = Util().leerInt("Ingrese cantidad de estudiantez:\n");
    arreglo = new List.filled(tam, Estudiante());
  }

  void leerInfo(){
    for(int i = 0; i < arreglo.length; i++){
      arreglo[i].codigo;
      arreglo[i].codPlan;
      arreglo[i].nombre;
      arreglo[i].apellido;
      arreglo[i].notas;
    }
  }

  void verListado(){
    for(int i = 0; i < arreglo.length; i++){
      print('${arreglo[i]} \n');
    }
  }

  void consultarCodigo(){
    bool existe = false;
    int codBuscar = Util().leerInt("Ingrese codigo a buscar:\n");
    for(int i = 0; i < arreglo.length; i++){
      if(codBuscar == arreglo[i].codigo){
        existe = true;
        print(e);
        break;
      }
    }
    if(!existe){
      print("Codigo estudiantil inexistente.\n");
    }
  }

  void aprobados(){
    for(int i = 0; i < arreglo.length; i++){
      if(arreglo[i].notas[3] >= 2.96){
        print('${arreglo[i].codigo}: Aprobado\n');
      }
      else if(arreglo[i].notas[3] > 2.45 && arreglo[i].notas[3] < 2.96){
        print('${arreglo[i].codigo}: Habilitable\n');
      }
      else{
        print('${arreglo[i].codigo}: Reprobado\n');
      }
    }
  }

  void calcularPromedio(){
    double promedio = 0;
    for(int i = 0; i < arreglo.length; i++){
      promedio+= arreglo[i].notas[3];
    }
    promedio/= arreglo.length;
    print("El promedio de definitivas de los ${arreglo.length} estudiantes fue: $promedio\n");
  }

  void menu(){
    leerCant();
    leerInfo();
    verListado();
    consultarCodigo();
    aprobados();
    calcularPromedio();
  }
}