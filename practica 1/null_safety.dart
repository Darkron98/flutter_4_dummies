main(){
  // datos opcionales:
  // se representan con ? despues del tipo de variable
  // hace referencia a que el dato puede ser null
  int? n1 = null;
  int n2 = 2;
  // validacion ??
  // estructura: dato1 ?? dato2
  // en caso de que dato1 sea null devuelve dato2
  // caso contrario devuelve dato1
  var nullSafe = n1 ?? n2;
  print(nullSafe);
}