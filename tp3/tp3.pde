PImage ObraReferencia;
void setup() {
  size(800, 400);
  ObraReferencia=loadImage("obra elegida.jpeg");
}
void draw () {
  image(ObraReferencia, 0, 0, width/2, height);
  DibujoGrilla();//Dibujo una grilla hecha con cuadrados blancos y negros.
  ColorRombos(color(250, 0, 0), 150);//Dibujo rombos dentro de cada cuadrado.
  Distancia(mouseX, mouseY, 600, 200);//Creo una función que me pueda devolver un valor, en este caso, la distancia del mouse al centro de la pantalla de interés.
}
