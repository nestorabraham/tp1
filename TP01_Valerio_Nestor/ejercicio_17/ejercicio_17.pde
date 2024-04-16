float x1=50, y1=50, x2=80, y2=200;
float radiolink= 30;
float distanciaDeTesoro= 50;

void setup() {
  size(800, 400);
  // Inicializar las posiciones de Link y el tesoro
  x1 = width / 2; // Posición inicial de Link centrada horizontalmente
  y1 = height / 2; // Posición inicial de Link centrada verticalmente
  x2 = random(width); // Posición aleatoria del tesoro en el eje X
  y2 = random(height); // Posición aleatoria del tesoro en el eje Y
}

void draw() {
  background(255);
  
  // Calcular la distancia entre Link y el tesoro
  float d = dist(x1, y1, x2, y2);
  
  // Dibujar a Link como un círculo
  fill(0, 0, 255);
  ellipse(x1, y1, 40, 40);
  
  // Dibujar el tesoro como un cuadrado
  fill(255, 255, 0);
  rect(x2, y2, 40, 40);
  
  // Mostrar la distancia entre Link y el tesoro
  fill(0);
  textSize(20);
  text("Distancia al tesoro: " + d, 20, 20);
  
  // Si Link está lo suficientemente cerca del tesoro, indicarlo
  if (d < 50) {
    textSize(30);
    text("¡Tesoro encontrado!", width/2 - 150, height/2);
  }
}

void mouseMoved() {
  // Actualizar la posición de Link con la posición del mouse
  x1 = mouseX;
  y1 = mouseY;
}
