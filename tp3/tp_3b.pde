PImage ObraReferencia;
void setup() {
  size(800, 400);
  ObraReferencia=loadImage("obra elegida.jpeg");
}
void draw () {
  image(ObraReferencia, 0, 0, width/2, height);
  DibujoGrilla();
  DibujoRombos();
  ColorRombos(color(250, 0, 0), 150);
  Distancia(mouseX, mouseY, 600, 200);
}
