//Armo una función propia sin parámetros, que no me devuelve valor.
void MouseEnPantalla() {
  if (dist(mouseX, mouseY, 600, 200)>=200) {//Si se cumple el condicional if, es decir, si la distancia entre la posición del mouse y el punto 600x y 200y 
  //(centro de la mitad derecha de la pantalla) es mayor igual a 200px (la posición del mouse ahora está en la mitad izquierda de la pantalla, o fuera de ella),
  //los cuadrados serán rellenos según valores de r, g y b, y los rombos blancos o negros.
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        if ((i + j) % 2 == 0) {
          fill(r, 0, b); // Variaciones de rojo según valor de r, y de auzl según valor de b.
        } else {
          fill(0, g, 0); // Variaciones de verde según g.
        }
        rect(100 * i, 100 * j, 100, 100);
      }
    }
    for (int i = 0; i <= 400; i += 100) {
      for (int j = 0; j <= 400; j += 100) {
        if (((i + j) / 100) % 2 == 0) {
          fill(0);//Rombos negros.
        } else {
          fill(255);//Rombos blancos.
        }
        quad(50 + i, 0 + j, 100 + i, 50 + j, 50 + i, 100 + j, 0 + i, 50 + j);
      }
    }
  } else if (dist(mouseX, mouseY, 600, 200)<200) {//Al revés del caso anterior, si se cumple el condicional if, es decir, si la distancia entre la posición
  //del mouse y el punto 600x y 200y (centro de la mitad derecha de la pantalla) es menor a 200px (la posición del mouse ahora está en la mitad derecha de la pantalla),
  //los rombos serán rellenos según valores de r, g y b, y los cuadrados blancos o negros.
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        if ((i + j) % 2 == 0) {
          fill(255);//Cuadrados blancos.
        } else {
          fill(0);//Cuadrados negros.
        }
        rect(100 * i, 100 * j, 100, 100);
      }
    }
    for (int i = 0; i <= 400; i += 100) {
      for (int j = 0; j <= 400; j += 100) {
        if (((i + j) / 100) % 2 == 0) {
          fill(r, g, 0);//Variaciones de rojo y verde según el valor de r.
        } else {
          fill(b, 0, r);//Variaciones de rojo según valor de b, de verde según valor de g, y de azul según valor de r.
        }
        quad(50 + i, 0 + j, 100 + i, 50 + j, 50 + i, 100 + j, 0 + i, 50 + j);
      }
    }
  }
}
