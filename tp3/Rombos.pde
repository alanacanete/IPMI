/*void DibujoRombos(){
 for (int i=0; i<=400; i+=100) {
 for (int j=0; j<=400; j+=100) {
 if (((i + j)/100) % 2 == 0) {
 fill(0);
 } else {
 fill(255);
 }
 quad(50+i,0+j,100+i,50+j,50+i,100+j,0+i,50+j);
 }
 }
 }*/
void ColorRombos(color c, int alpha) {
  for (int i = 0; i <= 400; i += 100) {
    for (int j = 0; j <= 400; j += 100) {
      fill(c, alpha); // Establece el color y la transparencia
      quad(50 + i, 0 + j, 100 + i, 50 + j, 50 + i, 100 + j, 0 + i, 50 + j);
    }
  }
}
