// Declarar variables para la posición y la dirección de la línea y la elipse
float yPos; // Posición de la línea y la elipse
float velocidad = 2; // Velocidad de movimiento
boolean moviendoHaciaAbajo = true; // Dirección inicial de movimiento

// Declarar dimensiones de la elipse
float elipseAncho = 80;
float elipseAlto = 80;

void setup() {  
  size(400, 200);
// Inicializar la posición inicial de la línea y la elipse en la parte superior del lienzo  
 yPos = 0;
}
void draw() {  
  background(0); // Mantener el lienzo en negro
    // Dibujar la línea desde la coordenada inicial hasta todo el ancho del lienzo  
    stroke(255);// Color blanco para la línea
    // Dibujar la línea y la elipse según la dirección de movimiento    
    if (moviendoHaciaAbajo) {      
      line(0, yPos, width, yPos); // Dibujar la línea arriba de la elipse   
  fill(255);// Color blanco para la elipse    
ellipse(width / 2, yPos + 40, elipseAncho, elipseAlto);// Dibujar la elipse 40px debajo de la línea  
} else {
  fill(255); // Color blanco para la elipse     
ellipse(width / 2, yPos - 40, elipseAncho, elipseAlto);// Dibujar la elipse 40px arriba de la línea 
line(0, yPos, width, yPos);// Dibujar la línea debajo de la elipse   
}
    // Actualizar la posición de la línea y la dirección de movimiento  
    if (moviendoHaciaAbajo) {    
      yPos += velocidad; // Mover hacia abajo    
  if (yPos >= height) {         
    // Si llega a la parte inferior, invertir la dirección         
    moviendoHaciaAbajo = false;
} 
 } else {
  yPos -= velocidad;
// Mover hacia arriba   
if (yPos <= 0) {       
  // Si llega a la parte superior, invertir la dirección        
  moviendoHaciaAbajo = true;
   }   
 }
}
