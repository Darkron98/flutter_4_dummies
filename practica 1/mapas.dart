main(){
  // los mapas son estructuras llave valor
  // se inicializan asi
  Map mapa = {
    1 : 'uno',
    'dos' : 2,
    3 : 'tres',
    4 : 'cuatro',
  };
  // tambien se pueden definir el tipo de dato de las llaves
  // y de los valores de la siguiente manera
  Map<String, dynamic> mapaStatic ={
    'idEmpleado' : 123456,
    'telefono' : 987641,
    'edad' : 19,
    'nombre': 'juanito',
  };
  print(mapa);
  print(mapaStatic);
}