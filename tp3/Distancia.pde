//creo una función propia capaz de devolverme el valor de la distancia entre
//el mouse y el punto (600,200)
void Distancia(float mouseX, float mouseY, int mitadAncho, int mitadAlto) {
  translate(400, 0);
  float Distancia = dist(mouseX, mouseY, mitadAncho, mitadAlto);
  println(Distancia);
  if (frameCount/60>=15) {
    Distancia=0;
  }
}
