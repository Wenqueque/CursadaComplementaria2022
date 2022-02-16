class Creditos{
  int y1=650;
  String str="Realizado por:\nElea Sofia Carrillo\nComisión 4\n\nProtagonistas:\nGerda\nKai\nLa Reina de las nieves\nLa abuela\nLos piratas\nEl chaman";
  Imagenes imagenes;
  Creditos(){
    imagenes=new Imagenes();
  }
  
  void roll(){
    imagenes.ImgFdo(20);
   if (y1 <= -1120) { //Desplazamiento de textos por y
      y1 = y1 + (int)textWidth(str) + 3000;
    }
    text(str, 300, y1);
    y1-=2; 
  }
}
