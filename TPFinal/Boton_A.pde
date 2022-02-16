class Boton {
  int posX, posY, anchoBoton, altoBoton, imagen, xtxtBtn;
  color colorON;
  boolean banderaOnOff;
  Textos textos;
  
  Boton(int x, int y, int ancho, int alto, int txtBtn) {
    textos = new Textos();
    posX=x;
    posY=y;
    anchoBoton=ancho;
    altoBoton=alto;
    xtxtBtn = txtBtn;
    colorON=color(#4bd8ff,50);
  }
  void dibujar() {
    fill(colorON);
    rect(posX, posY, anchoBoton, altoBoton);
    textos.dibujarTextos(xtxtBtn, posX+15, posY+65, 40, 0);//text del boton
  }
  
 void setDimensiones(int x, int y, int ancho, int alto) {
    posX=x;
    posY=y;
    anchoBoton=ancho;
    altoBoton=alto;
  }
 
}
