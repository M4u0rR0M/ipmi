/*
Mauro Romero, Comision 3, IPMI
Link: 

se que no es igual a la imagen de referencia, pero no entiendo como usar los limites con pushMatrix y clip para hacer un diseño mas fiel
*/
PImage referencia;
void setup() {
    background(255);
    size(800,400);
    line(400,0,400,400);
    referencia = loadImage("miImagen.jpg");
}
 
void draw() {
  //ayudita para posicioes
  //println(mouseX,mouseY);
      image(referencia, 420, 0, 400, 400);
      if(miColor()==false){
        figura();
      } else if (miColor()==true) {
        figuraColor();
      }
}
