void DibujoGrilla() {
 // Declaro variables para mapear (cambiar de escala) la posición del mouse
//al rango de colores en RGB.
int r = int(map(mouseX, 400, width, 0, 255));//declaro la variable "r"(red) del RGB
//que va a obtener un valor según la posición del mouse en X, y ese valor lo cambiará
//a una escala de rojos. A su vez, este valor será flotante, por lo que
//el int r=int.. lo transformará en un numero entero.
int g = int(map(mouseY, 0, height, 0, 255));//lo mismo que en el caso de arriba
//, pero para escala de verdes, y con respecto al movimiento del mouse en el eje Y.
int b = int(map(mouseY, 0, height, 0, 255));//lo mismo que en el caso de arriba, pero
//para escala de azules.
  translate(400, 0);//cambio el centro al punto 400 de X,0 de Y.
  for (int i=0; i<4; i++) {//creo las filas de cuadrados
    for (int j=0; j<4; j++) {//creo las columnas de cuadrados.
      if ((i+j)%2==0) {
        fill(r,0,b);
      } else {
        fill(0,g,0);
      }
      rect(100*i, 100*j, 100, 100);
    }
  }
}




    
