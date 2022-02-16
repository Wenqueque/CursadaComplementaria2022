class Juego {

  //-----------------------------------------------------
  ////PROPIEDADES

  String estado;
  PImage fondo, finalB1, finalM;
  int tamText, texto;
  Jugador jugador;
  Reina reina;
  Contador contador;
  String estoyJugando;
  
  Imagenes imagenes;
  Textos textos;
  
  // -----------------------------------------------------
  //CONSTRUCTOR
  Juego() {

    jugador = new Jugador();
    reina = new Reina();
    contador = new Contador();
    fondo = loadImage("fondo.png");
    finalM = loadImage("imagen17.png");
    finalB1 = loadImage("imagen18.png");
    tamText = 20;
    contador.tiempoContador= 30;
    estado = "menu";
    
    imagenes = new Imagenes();
    textos = new Textos();
    
  }

  // -----------------------------------------------------
  //METODOS
  void actualizar() {
    //----------ESTADO DE JUEGO------------
    //Menu
    if (estado.equals("menu")) {

      contador.tiempoContador = 30;
      //Juego
    } 

    if (estado.equals("jugar")) {
      contador.tiempoContador-=0.0193; //Si aca se puede reemplazar para calcular segundos reales, mejor      //Tiempo limite
      reina.actualizar();
      if (contador.tiempoContador < 0 ) {
        estado = "perder";
      } else if (reina.reinaVida<=0) {
        estado = "ganar";
      }
    }
  }

  void dibujar() {
    if (estado.equals("menu")) {

      pushStyle();

      image(fondo, 0, 0);
      textSize(tamText+20);

      textAlign(CENTER);      
      fill(0);
      text("Minijuego: derrota a la reina", width/2, height/8+10);

      textSize(tamText);
      textAlign(CENTER);  
      fill(0, 80);
      text("Esto te enseñará a no meterte conmigo", width/4, height/5);
      text("Muajajaja.", 700, height/5+370);

      textAlign(CENTER);
      fill(0, 250);
      text("Para ganarle a la reina deberás iluminarla lo suficiente\nantes de que ella te congele en 30 segundos, ten cuidado!", width/2, height-40);   

      fill(255, 250);
      textAlign(CENTER);
      text("Empezar", width/2, height/2);

      popStyle();
    } else if (estado.equals("jugar")) {
      pushStyle();
      background(255);
      image(fondo, 0, 0);
      reina.dibujar();
      //Dibujar el contador y vida de la reina
      contador.dibujar();
      //Dibuja  del jugador en mouseX y mouseY
      jugador.espejo(mouseX, mouseY);

      popStyle();
    } else if (estado.equals("ganar")) {
      pushStyle();

      image(finalB1,0,0);
      texto= 18;
      textos.dibujarTextos(texto, 50, 470, 20, 0);

      popStyle();
    } else if (estado.equals("perder")) {
      pushStyle();

      image(finalM,0,0);
      texto= 17;
      textos.dibujarTextos(texto, 50, 470, 20, 0);
      fill(#82c6c6);
      texto = 24;

      popStyle();
    }
  }

  //-Vida de la reina y el contador.
  void bmatar() {
    reina.matar();
    contador.barraVida-=10;
  }

  void mouse() {
    if (estado.equals("jugar")) {
       jugador.iluminar(mouseX, mouseY, reina.x, reina.y, reina.tx, reina.ty);
    } 

    if (estado.equals("menu")) { //Boton jugar   
      if (mouseX > width/2  - 50 && mouseX < width/2 + 50 &&
        mouseY > height/2  - 50 && mouseY < height/2 + 50  ) {
        rect(width/2  - 50, height/2 - 25, 100, 50);
        estado = "jugar";
      }
    }

  }

  void tecla() {
    //keyCode == 82 = Tecla 'R'
    if (((estado.equals("ganar") || estado.equals("perder")) && keyCode == 49)) {
      jugador = new Jugador();
      reina = new Reina();
      contador = new Contador();
      fondo = loadImage("fondo.png");
      estado = "menu";
      tamText = 20;
    }
  }
}
