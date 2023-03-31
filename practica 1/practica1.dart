 main(){
  //ternarios
  int? n1 = null;
  int n2 = 2;
  var ternario = n1 == n2 ? 'ok' : ':c';
  //null safety
  var nullSafe = n1 ?? n2;
  Map mapa = {
    //llave : valor,
    1 : 'uno',
    'dos' : 2,
    3 : 'tres',
    4 : 'cuatro',
  };
  Map<String, dynamic> mapaStatic ={
    'idEmpleado' : 123456,
    'telefono' : 987641,
    'edad' : 19,
    'nombre': 'juanito',
  };
  final List lista = [1,2,3,4,5]; //lista dinamica
  lista.add(8);
  lista.remove(2);
  List<dynamic> lista2; // otra definicion de lista dinamica
  List<int> staticList = [1,2,3,5]; // lista estatica
  print('hola');
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
 }

