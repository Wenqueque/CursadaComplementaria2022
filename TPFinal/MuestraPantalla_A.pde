class MuestraPantalla {

  Imagenes imagenes;
  Textos textos;
  int texto, imagen;

  MuestraPantalla() {

    textos = new Textos();
    imagenes = new Imagenes();
  }

  //---------------Mostrar/dibujar pantallas--------------------- 

  void dibujar(int txt, int img) {

    imagenes.ImgFdo(img);
    textos.dibujarTextos(txt, 50, 470, 20, 0);
    
  }
}
