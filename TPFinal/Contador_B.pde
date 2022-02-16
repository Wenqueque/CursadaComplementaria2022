class Contador {

  //Contador = Muestra detalles de vida y tiempo en la pantalla.
  //-----------------------------------------------------
  ////PROPIEDADES
  float tiempoContador;
  int barraVida;
  int azul, rojo;

  // -----------------------------------------------------
  //CONSTRUCTOR
  Contador() {
    rectMode(CORNER);
    barraVida=400;
    tiempoContador = 30;

  }

  // -----------------------------------------------------
  //METODOS 
  void dibujar() {

    pushStyle();
    fill(255);
    noStroke();
    rect(width/2-170, 550, 400, 20, 50);
    fill(rojo, 0, azul);
    rect(width/2-170, 550, barraVida, 20, 50);
    textSize(40);
    text(int(tiempoContador), 50, 50);
    popStyle();

    if (barraVida<130) {
      azul=0;
      rojo=250;
    } else if (barraVida<261 && barraVida>130) {
      azul=200;
      rojo=200;
    } else if (barraVida>260) {
      azul=250;
      rojo=0;
    }
  }
}
