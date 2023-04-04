import 'Util.dart';

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
    this.notas = [];
  })

  set codigo(int codigo){
    this.codigo = codigo;
  }

  set codigo(){
    this.codigo = Util().leerInt("Digite el codigo: ");
  }

  set codPlan(int codPlan){
    this.codPlan = codPlan;
  }

  set nombre(String nombre){
    this.nombre = nombre;
  }

  set apellido(String apellido){
    this.apellido = apellido;
  }

  set notas(List notas){
    this.notas = notas;
  }

  set notas(){
    for( int i = 0; i < 3; i++){
      this.notas[i] = Util().leerDouble("Digite la nota ${i+1}");
    }
    this.notas[3] = this.notas[0] * 0.3 + this.notas[1] * 0.3 + this.notas[2] * 0.4;
  }

  int get gcodigo{
    return this.codigo;
  }

  int get gcodPlan{
    return this.codPlan;
  }

  String get gnombre{
    return this.nombre;
  }

  String get gapellido{
    return this.apellido;
  }

  double gnotas(int index){
    return this.notas[index];
  }

  
}