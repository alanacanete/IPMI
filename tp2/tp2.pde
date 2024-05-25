//Nombre y apellido: Alana Florencia Cañete
//Comisión: 2
//Legajo:118985/1
//Declaro las variables que voy a utilizar luego.
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
String Texto1;
String Texto2;
String Texto3;
String Texto4;
String Texto5;
float posX;
float posX2;
float posY1;
float v1=3.0;
float v3=0.9;
int tam;
int alpha;
int alpha2;
int v2=2;
int v4=1;
int fin=1;
void setup(){
  //Resolución de la pantalla.
  size(640,480);
  //Asigno un valor a las variables.
imagen1=loadImage("control1.png");
imagen2=loadImage("control2.jpeg");
imagen3=loadImage("control3.jpg");
imagen4=loadImage("control4.png");
Texto1="Un videojuego de acción y aventura desarrollado por Remedy Entertainment \nAÑO 2019";
Texto2="En esta trama,seguimos a Jesse Faden\nmientras llega al misterioso cuartel general de la Agencia Federal de Control\nen busca de respuestas sobre su pasado y el paradero de su hermano.";
Texto3="Jesse deberá desentrañar los secretos ocultos de la agencia,\nenfrentarse a enemigos poseídos y dominar sus propios poderes sobrenaturales\npara detener la invasión y descubrir la verdad sobre su destino.";
Texto4="Control es uno de los mejores juegos de los últimos años,\ncon varios premios de Juego del Año otorgado por distintas publicaciones,\npremio a la Mejor Dirección de Arte en The Game Awards 2019\ny una media de 84 en OpenCritic.";
Texto5="Disponible en las plataformas\nMicrosoft Windows, PlayStation 4, Xbox One, Nintendo Switch.\nAHORA TAMBIÉN Ultimate Edition para PS5 y Xbox Series X / S"; 
tam=15;
posX=0;
posX2=width/2;
posY1=0;
alpha=255;
alpha2=255;
fin=1;
}
void draw(){
  //Primera diapositiva.
  //Condicional. Utilizo las variables, si el tiempo es menor/igual a 2 segundos, aproximadamente, se mostrarán la imagen1 y el Texto1. 
  if (frameCount/60<=2){
image(imagen1,0,0);
textAlign(CENTER,TOP);
textSize(15);  
fill(255);
text(Texto1,width/2,height/4);
}
 //De lo contrario, si el tiempo supera los 2 segundos pero no alcanza los 5 segundos (desde iniciado el programa), el tamaño del Texto1 aumentará.
if (frameCount/60>2 && frameCount/60<5){
tam+=1;
image(imagen1,0,0);
textAlign(CENTER,TOP);
textSize(tam);  
text(Texto1,width/2,height/4);
}
//Segunda diapositiva.
//Condicional. Si el tiempo es aproximadamente mayor igual a 5 segundos desde que comenzó a ejecutarse el programa (implica que terminó la primera diapositiva), 
// y la variable posX es menor a la posición "intermedia" de quietud del texto (width/2), se mostrará la imagen2 y el Texto2.
if (frameCount/60>=5 && posX<width/2){
image(imagen2,0,0);
 posX+=v1;
textAlign(CENTER,CENTER);
textSize(15);
text(Texto2,posX,height/4);
}
//Sigue mostrándose la segunda diapositiva. Aquí, si la posición del texto en X, determinada por la variable posX es igual a la posición intermedia de quietud,
//entonces se mostrará el Texto2 fijo, en el centro, durante unos segundos (más específicamente, hasta los 10 segundos de incio del programa).
if (posX==width/2 && frameCount/60<=10){
textAlign(CENTER,CENTER);
textSize(15);
text(Texto2,width/2,height/4);
}
//Cuando el tiempo desde que se inició el programa sea mayor a 10 segundos, y posX sea menor al ancho de la pantalla * 3/2, 
//el texto comenzará a desplazarse nuevamente(de izquierda a derecha).
if (frameCount/60>10 && posX2<width*3/2){
posX2+=v1;
image(imagen2,0,0);
textAlign(CENTER,CENTER);
textSize(15);
text(Texto2,posX2,height/4);
}
//Cuando la posición del texto en el eje X, haya alcanzado y superado el valor del ancho de la pantalla*3/2, sólo se mostrará la imagen2 y un nuevo texto (Texto3).
if (posX2>=width*3/2){
image (imagen2,0,0);
textAlign(CENTER,CENTER);
text(Texto3,width/2,height/2);
}
//Cuando el tiempo alcance y supere los 18 segundos, aproximadamente, desde que empezó a correr el programa, el Texto3 aumentará su transparencia en v2 por cuadro por segundo, hasta desaparecer. 
if (frameCount/60>=18 && frameCount/60<21){
alpha=alpha-v2;
fill(255,255,255,alpha);
text(Texto3,width/2,height/2);
}
//Cuando el tiempo haya alcanzado y superado los 20 segundos, y sea menor a 30 segundos, desde iniciado el programa, se mostrará en pantalla la imagen3 fija,
//junto con el Texto4 desplazándose de arriba hacia abajo.
if (frameCount/60>=21 && frameCount/60<31){
image(imagen3,0,0);
textAlign(CENTER,CENTER);
textSize(19);
fill(255,255,255,255);
posY1+=v3;
text(Texto4,width/2,posY1);
}
//Cuando el tiempo haya alcanzado y superado los 31 segundos desde iniciado el programa, y sea menor a los 35 segundos, aparecerán la imagen4 y el Texto5 fijos (sin movimiento).
if (frameCount/60>=31 && frameCount/60<35){
image(imagen4,0,0);
fill(255,255,255,255);
text(Texto5,width/2,height/2);
}
//A partir de los 35 segundos de iniciado el programa, y hasta que se mantenga la relación tiempo<40segs, el Texto5 aumentará su transparencia, hasta no ser percibido.
if (frameCount/60>=35 && frameCount/60<40){
image(imagen4,0,0);
alpha2-=v4;
fill(255,255,255,alpha2);
text(Texto5,width/2,height/2);
}
//Condicional, si el tiempo desde que comenzó a ejecutarse el programa, alcanzó y superó los 40 segundos, se presentará una pantalla de color negro con un cuadrado rojo en el centro,
//y un texto arriba que dice "REINICIAR".
if (frameCount/60>=40){
background(0);
fill(255,0,0);
stroke(0);
rect(270,190,100,100);
textAlign(CENTER,CENTER);
textSize(40);
text("REINICIAR",320,140);
}
println(frameCount/60);
}
void mousePressed(){ //Cuando se presione el botón del mouse, los segundos hayan alcanzado y superado los 40 segundos, y la posición del cursor esté dentro de los límites de X e Y
//del cuadrado rojo antes mencionado, se reestablecerán las variables a sus valores inciales, y el programa volverá a ejecutarse.
  if ( frameCount/60>=40 && mouseX>=270 && mouseX<=370 && mouseY>=190 && mouseY<=290){
tam = 15;
posX = 0;
posX2 = width/2;
posY1 = 0;
alpha = 255;
alpha2 = 255;
frameCount=1-fin;
}
}
