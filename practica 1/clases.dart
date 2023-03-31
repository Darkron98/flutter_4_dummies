main(){
  List<int> id;
  List<double> salario;
  List<String> nombre, cargo;
  id = [01, 02, 03, 04, 05];
  salario = [1000, 2000, 3000, 4000, 5000];
  nombre = ['Juan', 'Luismi', 'Andres', 'Felipe', 'Camilo'];
  cargo = ['Ingeniero', 'Albañil', 'Secretaria', 'Administrador', 'Abogato'];

  List<Empleado> empleados = id.map((e) => Empleado(id: e)).toList();
  for(int i = 0; i< empleados.length ; i++){
    empleados[i].copyWith(
      nombre: nombre[i], 
      salario: salario[i], 
      cargo: cargo[i],
    );
    print('id: ${empleados[i].id}');//interpolacion
    print('nombre: ${empleados[i].nombre}');
    print('cargo: ${empleados[i].cargo}');
    print('salario: ${empleados[i].salario}');
  }
}

class Empleado{
  //atributos
  final int id;
  final String nombre;
  final double salario;
  final String cargo;
  //constructor
  Empleado({
    this.id = 0,
    this.nombre = '', 
    this.salario = 0, 
    this.cargo = '',
    });
  //setters
  set cargo(String cargo){
    this.cargo = cargo;
  }
  set salario(double salario){
    this.salario = salario;
  }
  set nombre(String nombre){
    this.nombre = nombre;
  }
  set id(int id){
    this.id = id;
  }
  //metodo copiar
  Empleado copyWith(
    {int? id, 
    String? nombre, 
    double? salario, 
    String? cargo,})=>Empleado(
      id: id ?? this.id,
      nombre: nombre?? this.nombre, 
      salario: salario??this.salario,
      cargo: cargo ?? this.cargo,
      );
}