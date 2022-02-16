class Pantallas {

  // -----------------------------------------------------
  //PROPIEDADES
  Textos textos;
  Creditos creditos;
  Imagenes imagenes;
  Boton botonUno, botonDos, botonTres;
  MuestraPantalla muestraPantalla;

  PImage fondo;
  int imagen, texto;

  // -----------------------------------------------------
  //CONSTRUCTOR
  Pantallas() {
    textos = new Textos();
    imagenes = new Imagenes();
    botonUno=new Boton(80, 430, 210, 100, 21);
    botonDos=new Boton(500, 430, 210, 100, 22);
    botonTres=new Boton(50, 490, 165, 90, 23);
    imagen=0;
    texto=0;
    muestraPantalla = new MuestraPantalla();
    creditos= new Creditos();

  }
  
  // -----------------------------------------------------
  //METODOS
  void mostrar() {

    if (texto==0) {

      imagenes.ImgFdo(imagen);
      textos.dibujarTextos(texto, 230, 70, 50, 0);
      botonUno.dibujar();
      botonDos.dibujar();
      clickInicio();
      clickCreditos();
    } else if (texto == 20) {

      creditos.roll();
      botonTres.dibujar();
      clickVolver();
    } else if (texto == 17 && (juego.estado.equals("menu") || juego.estado.equals("jugar"))) {

      juego.dibujar();
      juego.actualizar();
    } else if (texto == 17 && (juego.estado.equals("ganar") || juego.estado.equals("perder"))) {

      juego.dibujar();
      juego.actualizar();
    }
  }
  void mostrarText(int PantCred) {

    if (PantCred==20) {

      creditos.roll();
      botonTres.dibujar();
      clickVolver();
    }
  }

  //----------------------------------------BOTON DE INICIO--------------------------------
  void clickInicio() {

    if (mousePressed  && texto==0 ) {      
      if (mouseX > 80 && mouseX < 290 && mouseY > 430 && mouseY < 530) {
        imagen=1;
        imagenes.ImgFdo(imagen);
        texto=1;
        textos.dibujarTextos(texto, 50, 470, 20, 0);
      }
    }
  }
  //----------------------------------------BOTON DE CREDITOS------------------------------
  void clickCreditos() {
    if (mousePressed  && texto==0 && mouseX > 500 && mouseX < 710 && mouseY > 430 && mouseY < 530) {
      texto=20;
    }
  }
  //------------------------------------BOTON DE VOLVER A INICIO----------------------------
  void clickVolver() {
    if (mousePressed  && texto==20 && mouseX > 50 && mouseX < 215 && mouseY > 490 && mouseY < 580) {
      imagen=0;
      imagenes.ImgFdo(imagen);
      texto=0;
      textos.dibujarTextos(texto, 50, 470, 20, 0);
    }
  }

  //--------------------------------ELIGE QUE TEXTO E IMAGEN MOSTRAR------------------------
  void MuestraPantalla() {
    //println("keyCode , key", keyCode, key);
    if (key == ' '  && texto!=0 && texto!=20) {
      if (texto == 1) {
        texto=2;
        imagen=2;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 2) {
        texto=24;
        textos.dibujarTextos(texto, 10, 470, 20, 0);
        texto=3;
        imagen=3;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 3) {
        texto=4;
        imagen=4;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 4) {
        texto=5;
        imagen=5;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 5) {
        texto=6;
        imagen=6;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 8) {
        texto=9;
        imagen=9;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 9) {
        texto=10;
        imagen=10;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 11) {
        texto=12;
        imagen=12;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 13) {
        texto=14;
        imagen=14;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 14) {
        texto=15;
        imagen=15;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 15) {
        texto=16;
        imagen=16;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 16) {
        texto=17;
        imagen=17;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 17) {
        //--------------Aca va el juego----------------
        texto=18;
        imagen=18;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 18) {
        texto=19;
        imagen=19;
        muestraPantalla.dibujar(texto, imagen);
      } else if (texto == 19) {
        texto=19;
        imagen=19;
        muestraPantalla.dibujar(texto, imagen);
      }
      
      //TECLA IZQ:
    } else if (keyCode == 37 && texto == 6) {
      texto = 7;
      imagen = 7;
      muestraPantalla.dibujar(texto, imagen);
      //TECLA DER:
    } else if (keyCode == 39 && texto == 6) {
      texto = 8;
      imagen = 8;
      muestraPantalla.dibujar(texto, imagen);
      //TECLA IZQ:
    } else if (keyCode == 37 && texto ==10) {
      texto = 13;
      imagen = 13;
      muestraPantalla.dibujar(texto, imagen);
      //TECLA DER:
    } else if (keyCode == 39 && texto == 10) {
      texto = 11;
      imagen = 11;
      muestraPantalla.dibujar(texto, imagen);
    }
    //Con 1 reiniciamos la historia
    if (keyCode == 49) {
      texto = 0;
      imagen = 0;
      muestraPantalla.dibujar(texto, imagen);
    }
  }
}
