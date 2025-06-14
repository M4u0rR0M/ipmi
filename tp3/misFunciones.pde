//Funcion Retornable para el aspecto dinamico
boolean miColor() {
  boolean resultado;
  if(key == 'z'){
    resultado = true;
  } else {
    resultado = false;
  }
  if(resultado==true && key == 'x'){
    resultado = false;
  }
  return resultado;
}

void figura(){
//Calculo de forma aprox que valores me dan una figura mas cercana a la original
 push();
 translate(400,0);
 noStroke();
  for(int i=0; i<20; i++){
    if(i%2==0){
      fill(0);
    } else {
      fill(255);
    }
    if(i>=8){
     ellipse(270-i*6,120+i*4,320-i*15,320-i*15.1);
    } else {
      ellipse(200+i*4,200-i*8.5,325-i*15,325-i*15);
    }
  }
  noFill();
  stroke(255);
  strokeWeight(25);
  ellipse(200,200,340,340);
 pop();
}
//Tomo la misma estructura de la forma normal y  altero el fill para agregar la funcion dinamica
void figuraColor(){
 push();
 translate(400,0);
 noStroke();
  for(int i=0; i<20; i++){
      fill(random(255),random(255),random(255));
    if(i>=8){
     ellipse(270-i*6,120+i*4,320-i*15,320-i*15.1);
    } else {
      ellipse(200+i*4,200-i*8.5,325-i*15,325-i*15);
    }
  }
  noFill();
  stroke(255);
  strokeWeight(25);
  ellipse(200,200,340,340);
 pop();
}
