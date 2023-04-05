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

  set codigo(int codigo){
      this.codigo = codigo;
  }

  set codPlan(int codPlan){
    this.codPlan = codPlan; 
  }

  set nombre(String? nombre){
    this.nombre = nombre;
  }

  set apellido(String? apellido){
    this.apellido = apellido;
  }

  set notas(List notas){
    this.notas = notas;
  }

  @override
  String toString() {
    return '''Estudiante: ${this.nombre} ${this.apellido}
Codigo: ${this.codigo}
Materia: ${this.codPlan}
Notas: ${notas}''';
  }
}