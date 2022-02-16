class Imagenes {
  String [] img = new String [21];
  PImage imagen;
  Imagenes(){
    for (int i = 0; i < 21; i++){
    img[i] = ("imagen" + i + ".png");
    }
  }
  
  void ImgFdo(int Id){
    imagen=loadImage(img[Id]);
    image(imagen,0,0);
  }
}
