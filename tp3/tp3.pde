//Link video Youtube: https://youtu.be/_ViOMGpgkjo
PImage ObraReferencia;
// Declaro variables globales r, g, b para mapear (cambiar de escala) la posición del mouse
//al rango de colores en RGB.
int r ;//declaro la variable "r"(red) del RGB
//que va a obtener un valor según la posición del mouse en X, y ese valor lo cambiará
//a una escala de rojos. A su vez, este valor será flotante, por lo que
//el int r=int.. lo transformará en un numero entero.
int g;//lo mismo que en el caso de arriba
//, pero para escala de verdes, y con respecto al movimiento del mouse en el eje Y.
int b;//lo mismo que en el caso de arriba, pero
//para escala de azules.
void setup() {
  size(800, 400);
  ObraReferencia=loadImage("M_1.jpeg");
}

void draw() {
  image(ObraReferencia, 0, 0, width/2, height);//Ubico la imagen de referencia en la mitad izquierda de la pantalla.
  translate(400, 0);//Cambio el centro al punto 400 de X,0 de Y.
  frameRate(60);
  r= int(map(mouseX, 0, width, 0, 255));
  g = int(map(mouseY, 0, height, 0, 255));
  b = int(map(mouseY, 0, height, 0, 255));
  boolean Tiempo=Tiempo(frameCount/60);//Llamo a la función Tiempo, y le doy un valor a su parámetro igual a frameCount/60.
  println (frameCount/60, Tiempo);//Imprimo en la consola la variación de t=frameCount/60, y al lado, el resultado (true o false) de la función Tiempo.
  println("frameRate "+ frameRate);//Imprimo el valor de frameRate para ver cómo varía a lo largo de la ejecución del programa.
  if (key=='a' || key=='A') {//Si presiono la tecla "a" o "A" en el teclado, se llama a la función MouseEnPantalla.
    MouseEnPantalla();
  } else {//Si presiono cualquier otra tecla del teclado, se llama a la función Inicio con valores 0a y 255c y se reinicia frameCount a 0.
    Inicio(0, 255);//Le doy valor inicial a los parámetros de la función Inicio a=0 y c=255;
    frameCount=0;
  }
  if (Tiempo==true) {//Si la función Tiempo devuelve un valor "true", entonces se disminuye el frameRate a 20 y se llama a la función Inicio, pero ahora con otros valores
    //de parámetros.
    frameRate(20);
    Inicio(int(random(255)), int(random(255)));//Le cambio el valor a los parámetros de la función Inicio; siendo estos, valores aleatorios flotantes de a y c, entre 0 y 255,
    //que luego se transformarán en enteros con la ayuda de int(....).
  }
}
