float a, b, c;

void setup() {
  size(500,500);
  background(250);
  float a=1;
  float b=1;
  float c=2;
  
  //calculo del discriminante
  float discriminante = pow(b,2) - 4*a*c;
  
  //determine el numero y tipo de raices
 if (discriminante > 0) {
   //Dos raices reales distintas
  float x1 = (-b + sqrt(discriminante)) / (2*a);
  float x2 = (-b - sqrt(discriminante)) / (2*a);
  println("las raices son: " + x1 + "y" + x2);
 } else if (discriminante== 0) {
   //Dos raices reales igales
  float x = -b / (2*a);
  println("la raiz doble es: " +x);
 } else{
  //no hay raices reales(raices complejas)
  println("no hay raices reales(raices complejas).");
 }
}
