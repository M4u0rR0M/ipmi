//Mauro Romero, Comision 3
/*Perdon por la falta de tildes, no encontre una fuente que las aceptara (con las ñ lo mismo)
Los colores los puse asi y repeti textos en un intento de hacerlo mas legible, no hay ,uy buenas o variadas fotos en relacion
a esta opbra, pero me gustaba mucho como para cambiarla*/
int pg,x,y, sz, szb;
PImage mimagen, mimagen1, mimagen2;
PFont miFuente;

void setup() {
  miFuente = createFont("absender1.ttf", 24);
  textFont(miFuente);
  size(640, 480);
  background(255);
  pg = 0;
  x = 0;
  y= 0;
  sz = 1;
  szb = 1;
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
    fill(0);
    text("Una obra de \nBill Viola", width/2, y);
    textSize(42);
    fill(255);
    text("Titulo: \nHeavens on Earth\n(Cielo en Tierra)", width/2, y-100);
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
    text("Quien es Bill Viola?", x, height/2-150);
    textSize(42);
    fill(0);
    text("Quien es Bill Viola?", x, height/2-150);
    textSize(21);
    textAlign(LEFT);
    fill(255,0,0);
    text("Bill Viola fue un videoartista, disenador visual y director de cine estadounidense. Es considerado una de las figuras mas influyentes en la generacion de artistas que utilizan los nuevos medios electronicos audiovisuales. Las tematicas de sus obras giran alrededor de las experiencias y preocupaciones de la condicion humana, tales como el nacimiento, la muerte y la consciencia", x/2, height/2-120, 400,400);
    fill(255);
    text("Bill Viola fue un videoartista, disenador visual y director de cine estadounidense. Es considerado una de las figuras mas influyentes en la generacion de artistas que utilizan los nuevos medios electronicos audiovisuales. Las tematicas de sus obras giran alrededor de las experiencias y preocupaciones de la condicion humana, tales como el nacimiento, la muerte y la consciencia", x/2, height/2-120, 400,400);
  } else if (pg >= 600){
    if(sz==40){
    sz = 40;
  } else {
  sz++;
}
  if(szb==25){
    szb = 25;
  } else {
  szb++;
  }
    image(mimagen2, 0, 0, 640, 480);
    textAlign(CENTER,CENTER);
    fill(255,0,0);
    textSize(sz+15);
    text("Que es la Obra?", width/2, height/2-150);
    fill(255);
    text("Que es la Obra?", width/2, height/2-150);
    fill(255);
    textSize(szb);
    textAlign(LEFT);
    text("Heaven and Earth es una obra de video instalacion creada por Bill Viola en 1992. En esta instalacion, Viola utiliza dos monitores de television enfrentados que muestran imagenes en blanco y negro: uno muestra el rostro de una anciana al borde de la muerte, y el otro muestra el rostro de un bebe recien nacido. Estos monitores estan colocados lo suficientemente cerca para que la imagen de cada uno se refleje en el otro, simbolizando la conexion entre la vida y la muerte", width/2-300, height/2-120, 550, 400);
    fill(200);
    text("Heaven and Earth es una obra de video instalacion creada por Bill Viola en 1992. En esta instalacion, Viola utiliza dos monitores de television enfrentados que muestran imagenes en blanco y negro: uno muestra el rostro de una anciana al borde de la muerte, y el otro muestra el rostro de un bebe recien nacido. Estos monitores estan colocados lo suficientemente cerca para que la imagen de cada uno se refleje en el otro, simbolizando la conexion entre la vida y la muerte", width/2-300, height/2-120, 550, 400);
    textSize(12);
    fill(255,0,0);
    ellipse(600,440,40,40);
    fill(0);
    textAlign(CENTER,CENTER);
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
