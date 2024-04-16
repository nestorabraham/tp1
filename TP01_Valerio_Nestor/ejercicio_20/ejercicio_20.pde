void setup() {
  size(440, 420);
  background(255); // Establecemos el fondo en blanco
  
  int anchoRect = 40; // Ancho del rectángulo
  int altoRect = 20; // Alto del rectángulo
  int espacioEntre = 20; // Espacio entre rectángulos
  
  // Bucle para dibujar los rectángulos en filas y columnas
  for (int y = 0; y < height; y += (altoRect + espacioEntre)) {
    for (int x = 0; x < width; x += (anchoRect + espacioEntre)) {
      rect(x, y, anchoRect, altoRect);
    }
  }
}
