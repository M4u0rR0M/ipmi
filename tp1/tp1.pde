void setup(){ 
//------Marco de Dibujo-------//
  size(800,400);
  background(180);
  strokeWeight(5);
  line(400,0,400,400);
  strokeWeight(1);
//-----------Imagen-----------//
  PImage miImagen;
  miImagen = loadImage("foto.jpg");
  image(miImagen,0,0,400,400);
//-----------Cuello-----------//
  fill(222,185,169);
  rect(520,150,160,140);
//-----------Rostro-----------// //<>//
//Orejas
  ellipse(500,150,25,45);
  ellipse(700,150,25,45);
//Cara
  ellipse(600,150,200,200);
//Ojos
  fill(255);
  ellipse(550,150,35,20);
  ellipse(650,150,35,20);
//pupilas
  ellipse(550,150,5,2);
  ellipse(650,150,5,2);
//Nariz 
  fill(222,185,169);
  triangle(600,150,590,200,615,200);
//Boca
    noFill();
    arc(600, 180, 100, 100, 0, PI/2);
//-----------Cuerpo-----------//
    fill(0,105,0);
    rect(500,270,200,300);
    triangle(500,270,435,400,500,400);
    triangle(700,270,785,400,700,400);
    fill(200);
    rect(500,295,200,25);
    fill(0,105,0);
    rect(500,300,200,5);
    rect(500,310,200,5);
    fill(200);
    rect(500,335,200,25);
    fill(0,105,0);
    rect(500,340,200,5);
    rect(500,350,200,5);
//---------Accesorios---------//
//Gorro
    fill(0);
    arc(600,120,200,190,PI,2*PI);
    fill(40);
    rect(500,100,200,30);
    fill(170,0,255);
    rect(500,105,200,5);
    rect(500,115,200,5);
//Auriculares
    fill(255);
    rect(490,150,10,30);
    rect(700,150,10,30);
    noFill();
    stroke(255);
    arc(600,180,200,200,radians(0),radians(180));
    line(600,305,620,400);
    fill(255);
    stroke(0);
    ellipse(600,295,10,30);
}
void draw(){
//Para encontrar mejor las medidas
  println(mouseX, mouseY);
}
