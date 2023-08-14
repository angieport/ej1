void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);
  
  // Definir colores
  color[] colors = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(255, 255, 0), color(0, 255, 255), color(255, 0, 255)};
  
  // Definir tamaños de formas geométricas
  int[] sizes = {20, 30, 40, 50, 60};
  
  // Generar y dibujar formas geométricas aleatorias
  for (int i = 0; i < 50; i++) {
    // Generar forma geométrica aleatoria
    int shape = int(random(2));
    color randomColor = colors[int(random(colors.length))];
    int randomSize = sizes[int(random(sizes.length))];
    
    // Dibujar forma geométrica
    if (shape == 0) {
      // Dibujar círculo
      int x = int(random(width));
      int y = int(random(height));
      fill(randomColor);
      ellipse(x, y, randomSize, randomSize);
    } else {
      // Dibujar rectángulo
      int x = int(random(width - randomSize));
      int y = int(random(height - randomSize));
      fill(randomColor);
      rect(x, y, randomSize, randomSize);
    }
  }
}
