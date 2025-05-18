//Mauro Romero, Comision 3
int pg,x,y, sz;
PImage mimagen, mimagen1, mimagen2;

void setup() {
  size(640, 480);
  background(255);
  pg = 0;
  x = 0;
  y= 0;
  sz = 1;
  mimagen = loadImage("foto1.jpg");
  mimagen1 = loadImage("foto3.jpg");
  mimagen2 = loadImage("foto2.jpg");
}

void draw() {
  if (pg >= 0 && pg < 300) {
    if(y==height/2){
    y = height/2;
  } else {
    y=y+2;
  }
    image(mimagen, 0, 0, 640, 480);
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(40);
    fill(200,0,0);
    text("Titulo: \nHeavens on Earth\n(Cielo en Tierra)", width/2, y-100);
    fill(255);
    text("Una obra de \nBill Viola", width/2, y);
  } else if (pg >= 300 && pg < 600){
    if(x==width/2){
    x = width/2;
  } else {
  x=x+2;
  }
    image(mimagen1, 0, 0, 640, 480);
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(40);
    text("Quién es Bill Viola?", x, height/2-150);
    textSize(20);
    textAlign(LEFT);
    fill(255,0,0);
    text("Bill Viola fue un videoartista, diseñador visual y director de cine estadounidense nacido el 25 de enero de 1951 en Nueva York y fallecido el 12 de julio de 2024 en Long Beach, California. Es considerado una de las figuras más influyentes en la generación de artistas que utilizan los nuevos medios electrónicos audiovisuales. Las temáticas de sus obras giran alrededor de las experiencias y preocupaciones de la condición humana, tales como el nacimiento, la muerte y la consciencia", x/2, height/2-120, 400,400);
  } else if (pg >= 600){
    if(sz==40){
    sz = 40;
  } else {
  sz++;
  }
    image(mimagen2, 0, 0, 640, 480);
    fill(255,0,0);
    textSize(sz);
    textAlign(CENTER,CENTER);
    text("Que es la Obra?", width/2, height/2-150);
    fill(255);
    textSize(sz-15);
    textAlign(LEFT);
    text("Heaven and Earth es una obra de video instalación creada por Bill Viola en 1992. En esta instalación, Viola utiliza dos monitores de televisión enfrentados que muestran imágenes en blanco y negro: uno muestra el rostro de una anciana al borde de la muerte, y el otro muestra el rostro de un bebé recién nacido. Estos monitores están colocados lo suficientemente cerca para que la imagen de cada uno se refleje en el otro, simbolizando la conexión entre la vida y la muerte", width/2-300, height/2-120, 550, 400);
    textSize(12);
    fill(255,0,0);
    ellipse(600,440,40,40);
    fill(0);
    textAlign(CENTER,CENTER);
    text("RESET",600,440);
    text("RESET",600,440);
    text("RESET",600,440);
    text("RESET",600,440);
    text("RESET",600,440);
    text("RESET",600,440);
  }
 pg++;
}
void mousePressed(){
  if ( pg > 600) {
    float distancia = dist(600,440, mouseX, mouseY);
    if ( distancia < 20 ) {
      pg = 0;
      x = 0;
      y= 0;
      sz = 1;
    }
  }
}
