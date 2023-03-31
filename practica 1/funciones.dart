main(){
  print(suma(1, 2));
  print(resta(n1: 1, n2: 2));
  print(resta(n2: 1, n1: 2));
}
//funcion con parametros posicionales
int suma(int n1, int n2){
  return n1 + n2;
}
//funcion con parametros no posicionales
int resta({required int n1, required int n2}){
  return n1 - n2;
}