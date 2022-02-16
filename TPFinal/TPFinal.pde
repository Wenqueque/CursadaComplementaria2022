Pantallas pantallas;
Juego juego;

void setup() {
  size(800, 600);
  pantallas = new Pantallas();
  juego = new Juego();
}
void draw() { 
  pantallas.mostrar();
}

void mousePressed() {
  juego.mouse();
}

void keyPressed() {
  pantallas.MuestraPantalla();
  if (juego.estado.equals("perder") || juego.estado.equals("ganar")) {
    juego.tecla();
  }
}
