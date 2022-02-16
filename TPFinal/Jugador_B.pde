class Jugador {

  //-----------------------------------------------------
  ////PROPIEDADES
  float x, y;
  float tx=width/7;
  float ty=width/5;
  float miraX, miraY;
  float luzx, luzy;
  PImage mira;
  PImage luz;

  // -----------------------------------------------------
  //CONSTRUCTOR
  //inicializar posición.
  Jugador() {
    mira=loadImage("mira.png");
    mira.resize(50, 50);
    luz=loadImage("luz.png");
    luz.resize(150, 150);
  }

  // -----------------------------------------------------
  //METODOS
  void espejo(float mx_, float my_) {
    miraX=mx_;
    miraY=my_;
    image(mira, miraX, miraY);
  }

  void iluminar(float luzx_, float luzy_, float x2, float y2, float tx2, float ty2) {
    
    luzx=luzx_;
    luzy=luzy_;
    
    image(luz, luzx, luzy);
    //Llamo la función matar la reina.
    if (luzx > x2 - tx2/2 && luzx < x2 + tx2/2 && luzy > y2- ty2/2 && luzy < y2 +  ty2/2) {
      juego.bmatar();
    }
    
  }
}
