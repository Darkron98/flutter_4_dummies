main(){
  //las listas son estructuras de datos
  //similares a los arrays, con la diferencia
  //de que las listas son de tamaño dinamico
  List lista = [1,2,3,4,5]; //lista de tipo dinamico
  lista.add(8);
  lista.remove(2);
  List<dynamic> lista2 = [1,'2',3,4.5]; // otra definicion de lista de tipo dinamico
  List<int> staticList = [1,2,3,5];// lista de tipo estatico
  print(lista2);
  print(staticList);
}