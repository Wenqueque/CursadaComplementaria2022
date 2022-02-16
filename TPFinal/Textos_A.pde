class Textos {

  String [] texto = new String [25];
  
  Textos(){
    texto[0] = "     La reina\n de las nieves";
    texto[1] = "Gerda y Kai eran mejores amigos.Un día, ambos fueron a la\ncasa de la abuela de Gerda, les contó una historia de una\npoderosa bruja, la reina de las nieves.";
    texto[2] = "Kai se burló de ella, menospreciándola y abucheándole.La\nreina de las nieves se enteró mirándolo por una\nventana y le lanzo una maldición a su corazón, volviéndolo\nfrío y malo.";
    texto[3] = "Al día siguiente ella fue a buscarlo y se lo llevó al castillo.\nGerda intentó detenerlo, pero fue en vano, la reina era más\nveloz.";
    texto[4] = "Dias después, Gerda fue en su búsqueda, su abuela hizo que\nlleve un preciado espejo que tenía y de ahí empezó su\naventura.";
    texto[5] = "Le pedía ayuda a animales que encontraba en un camino\npero ninguno tenía la respuesta que buscaba. Hasta que un\npájaro llama su atención.";
    texto[6] = "Le dice que la siga, se dirigen a un rio movido, el\nave cuenta que si ofreces algo al rio este te llevará a tu\ndestino ¿Qué hará Gerda?";
    texto[7] = "FIN.\nGerda no cree que un río pueda ayudarla en su busqueda,\nPor lo que decide irse a pié. No consiguió respuestas,\nvuelve a casa cansada, esperanzada a que Kai vuelva.\n/Presiona 1 para reiniciar la historia/";
    texto[8] = "Pide ayuda al río, regalándole un precioso collar que tenia,\nde la nada, aparece un bote vacío, agradecida, se sube a el y\nmágicamente se mueve solo.";
    texto[9] = "La llevó a un barco pirata estancado en agua congelada, de\npronto, le hacen una emboscada. Por suerte, ellos notaron\nque Gerda era buena y no le hicieron nada.";
    texto[10] = "Gerda les contó su situación y como estaba desesperadamente\nbuscando a su amigo. Los amigables piratas le ofrecían su\nayuda para su viaje. ¿Gerda la aceptará?";
    texto[11] = "No se sentía cómoda con ellos por lo amenazantes que se\nven y como la trataron al principio.Les agradece pero retoma\nsu camino sola.";
    texto[12] = "FIN.\nGerda siguió por un largo tiempo y empezó a tener frío,\nya era demasiado tarde para volver por la nieve que cubrió\nsu camino por completo, y eventualmente, su cuerpo.\n/Presiona 1 para reiniciar la historia/";
    texto[13] = "Los piratas le entregan un reno que tenían de mascota, le\ndijeron que la llevaría con un chamán que le ayudará con lo\nque necesita. Gerda a paso rápido va a buscarlo.";
    texto[14] = "Al hacerlo, el chaman cuenta que para derrotar a la reina\ndebe utilizar el espejo que tiene guardado. Sin entenderlo\ncompletamente, se dirige al hogar de su enemiga.";
    texto[15] = "Gerda encuentra el castillo de la reina, entra y ve Kai con\notra apariencia, por la emoción lo abrazó pero estaba frío y\nmuy quieto, poco a poco se estaba congelando.";
    texto[16] = "La reina está punto de lanzarle un hechizo al ver a una intrusa.\nGerda rapidamente piensa:\n¡El espejo! Debo derrotarla con ello.";
    texto[17] = "FIN.\nPor no pensar rápidamente que hacer, el hechizo cae sobre\nGerda, congelándola de pies a cabeza junto a Kai por estar a\nsu lado. La reina celebra por su victoria.\n/Presiona 1 para reiniciar la historia/";
    texto[18] = "Rápidamente sacas el espejo, mostrando el reflejo de la\nreina, vé a una dulce niña en ella. Se convierte en lo que era\nsu pasado yo antes del odio, agradece por todo y se retira.";
    texto[19] = "FIN.\nKai vuelve a ser el mismo de antes. Ambos regresan a casa,\ncontentos de estar juntos otra vez.\n/Presiona 1 para reiniciar la historia/";
    texto[20] = "Realizado por:\nElea Sofia Carrillo\nComisión 4\n\nProtagonistas:\nGerda\nKai\nLa Reina de las nieves\nLa abuela\nLos piratas\nEl chaman";
    texto[21] = "EMPEZAR";
    texto[22] = "CREDITOS";
    texto[23] = "INICIO";
    texto[24] = "Presiona 1 para reiniciar la historia en cualquier momento";
    
}
  
  void dibujarTextos(int index, float x, float y,  float size, color c) {
    fill(c);
    textSize(size);
    text(texto[index], x, y);
  }
}
