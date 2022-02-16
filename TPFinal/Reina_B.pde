class Reina {
  
  //-----------------------------------------------------
  ////PROPIEDADES
  float x, y;
  int tx, ty;
  float reinaVida;
  PImage[] reina = new PImage[20];
  //i es para pasar las posiciones del arreglo reina.
  int i= 0;

  // -----------------------------------------------------
  //CONSTRUCTOR
  Reina() {   
    x=random(tx, width-tx/2);
    y=random(ty, height/2+height/4-ty/2);
    reinaVida = 200;
    tx=150;
    ty=200;

    //Cargar imagenes al arreglo reina
    for (int i=0; i<19; i++) {
      reina[i]=loadImage("Reina"+i+".png");
      reina[i].resize(int(tx), int(ty));
    }
  }

  // -----------------------------------------------------
  //METODOS
  void dibujar() {
    if (i<=18) {
      image(reina[i], x, y);
    } else {
      image(reina[18], x, y);
    }
  } 

  void matar() {
    reinaVida-=5;
    if (i<=18  ) {
      i+=1;
    }
  }

  void reciclar() {
    x=random(tx, width-tx/2);
    y=random(ty, height/2+height/4-ty/2);
  }

  //Cada vez que el tiempo es divisible por 10, la posición de la reina se actualiza.
  void actualizar() {
    if (millis()/150 %10==0) {
      reciclar();
    }
  }
}
