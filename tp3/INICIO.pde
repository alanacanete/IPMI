//Armo una función con parámetros del tipo color a y c, que no devuelve valor.
void Inicio(color a, color c) {
  //Creo una grilla de cuadrados de 4x4, rellenos según valor de a y c.
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if ((i + j) % 2 == 0) {
        fill(c); //
      } else {
        fill(a); //
      }
      rect(100 * i, 100 * j, 100, 100);
    }
  }
  //Creo una grilla de rombos de 4x4, dentro de la grilla de cuadrados, rellenos según valor de a y c.
  for (int i = 0; i <= 400; i += 100) {
    for (int j = 0; j <= 400; j += 100) {
      if (((i + j) / 100) % 2 == 0) {
        fill(a);
      } else {
        fill(c);
      }
      quad(50 + i, 0 + j, 100 + i, 50 + j, 50 + i, 100 + j, 0 + i, 50 + j);
    }
  }
}
