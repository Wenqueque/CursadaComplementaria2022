class Inicio{
  PImage fondo;
  Textos textos;
  Inicio(){
    
    textos = new Textos();
    fondo = loadImage("imagen0.png");
     
  }
  
 void inicioDibujar(){
    image(fondo,0,0);//fondo
    //boton.botonDibujar(105,435);
    textos.dibujarTextos(0, 230, 70, 50, 0);//titulo
    textos.dibujarTextos(1, 130, 470, 20, 0);//EMPEZAR
    textos.dibujarTextos(5, 530, 470, 20, 0);//CREDITOS
  }
  
 
}
