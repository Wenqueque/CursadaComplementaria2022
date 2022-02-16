/*
Tecnología Multimedial 1, UNLP
Cursada complementaria 2022
Comisión 4, TP6 (Final)
Alumna:Elea Sofia Carrillo, legajo (11886/9)
Cuento: "La Reina de las Nieves", por Hans Christian Andersen
*/

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
