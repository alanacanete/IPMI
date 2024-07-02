void DibujoGrilla() {
  // Declaro variables para mapear (cambiar de escala) la posición del mouse
  //al rango de colores en RGB.
  int r = int(map(mouseX, 0, width, 0, 255));//declaro la variable "r"(red) del RGB
  //que va a obtener un valor según la posición del mouse en X, y ese valor lo cambiará
  //a una escala de rojos. A su vez, este valor será flotante, por lo que
  //el int r=int.. lo transformará en un numero entero.
  int g = int(map(mouseY, 0, height, 0, 255));//lo mismo que en el caso de arriba
  //, pero para escala de verdes, y con respecto al movimiento del mouse en el eje Y.
  int b = int(map(mouseY, 0, height, 0, 255));//lo mismo que en el caso de arriba, pero
  //para escala de azules.
  boolean MouseEstaEnPantalla = false;
  translate(400, 0);//cambio el centro al punto 400 de X,0 de Y.
  if (mouseX >= 0 && mouseX <= width && mouseY >= 0 && mouseY <= height) {
    MouseEstaEnPantalla = true;
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        if ((i + j) % 2 == 0) {
          fill(r, 0, b); // Variaciones de rojos y azules
        } else {
          fill(0, g, 0); // Variaciones de verdes
        }
        rect(100 * i, 100 * j, 100, 100);
      }
    }
  } else {
    MouseEstaEnPantalla = false;
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        if ((i + j) % 2 == 0) {
          fill(255); // Relleno blanco si se cumple la condición.
        } else {
          fill(0); // Relleno negro si no se cumple la condición.
        }
        rect(100 * i, 100 * j, 100, 100); // Ajustado para eliminar el desplazamiento de translate
      }
    }
  }
  if (frameCount/60>=15) {
    r=0;
    g=0;
    b=0;
    MouseEstaEnPantalla = false;
  }
}
