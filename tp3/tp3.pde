

//TP3 comisión 5
//Rodrigo Ezequiel Rodriguez - legajo 122865/2

int estado = 0;

float vibX1 = 0;
float vibY1 = 0;
float vibX2 = 0;
float vibY2 = 0;
float vibX3 = 0;
float vibY3 = 0;
float vibX4 = 0;
float vibY4 = 0; 
float anguloTriangulo3 = 0; 
float anguloTriangulo4 = 0;
float tamcircle = 70;
float tamcircle2 = 70;
float tamcircle3 = 90;

PImage obra;

// Patron de Colores
color verde = color(40, 140, 100);    //verde 
color verde1 = color(40,200,100);    //verde agua
color verde2 = color(20,70,40);      //verde oscuro
color azul = color(0, 0, 160);       //azul
color azul2 = color(20,0,100);       //azul oscuro
color celeste = color(0, 200, 215);  //celeste
color celeste2 =color(120,200,215);  //celeste opaco


//cambio de color 

color CELESTE = color(120,200,215);
color CELESTE2 = color(120,200,215);
color VERDE = color(40,200,100);
color CIAN = color(0, 200, 215);


boolean apreto;
boolean apreto2;
  
void setup(){
size(800,400);
obra=loadImage("pintura.jpg");

//estado
estado = 0;

}


void draw(){
background(199);
image(obra,0,0,420,400);
noStroke();



//Inicio

for(int j=0; j<3 ; j++){
for(int i=0; i<3 ; i++){
  if (j == 0 && i == 0) fill(verde2);
    if (j == 0 && i == 1) fill(azul); 
    if (j == 0 && i == 2) fill(azul2);
    if (j == 1 && i == 0) fill(verde);
    if (j == 1 && i == 1) fill(celeste);
    if (j == 1 && i == 2) fill(azul);
    if (j == 2 && i == 0) fill(verde1);
    if (j == 2 && i == 1) fill(verde);
    if (j == 2 && i == 2) fill(CELESTE);  //
  rect(460 + i*100, 27 + j*100 ,100,100);
 }
}

for(int r=0; r<3 ; r=r+1){
  fill(azul);
  rect(460 + r*100 ,327,100,26);
  
}
  
for(int k=0; k<3 ; k++){
  if(k == 0) fill(CELESTE2);
  if(k == 1) fill(celeste);
  if(k == 2) fill(verde2);
  rect(560, 53 + k*100 ,100,100);
 
 }
 
   // Figuras
   
  pushMatrix();
  if (dist(mouseX, mouseY, 710,73) < 50) {
    vibX1 = random(-2, 2);
    vibY1 = random(-2, 2);
  }else{
    vibX1 = 0;
    vibY1 = 0;
  }
  translate(710+ vibX1, 73 + vibY1);
  fill(verde2);
  triangle(-40, -23 ,40 ,-23 ,0 ,47 );   //triangulo columna 3 fila 1
  popMatrix();
  
  pushMatrix();
  if(dist(mouseX , mouseY,  710,183) < 50) {   
    vibX2 = random(-1.5, 1);
    vibY2 = random(-1.5, 1);
  }else{
    vibX2 = 0;
    vibY2 = 0;
  }
  translate(710+ vibX2, 183 + vibY2);
  fill(verde);
  triangle(-40, 22, 40, 22, 0, -43); //triangulo columna 3 fila 2
  popMatrix();
  
  
  
  
  fill(CIAN);
  rect(685,252,50,50);  //rectangulo columna 3 fila 3
  
  
  
  
  fill(VERDE);
  rect(585,79,50,50);  //rectangulo columna 2 fila 1
  
  
  
   pushMatrix();
  float d3 = dist(mouseX, mouseY, 610, 203);
  
  if (d3<60){
    float NewTam3 = map(d3,0 ,100 ,50, 90);
    if (tamcircle3 > NewTam3 + 1) {
      tamcircle3 -= 1.5;
    }else if (tamcircle3 < NewTam3 - 1) {
      tamcircle3 += 1.5;
    }
  } else if(tamcircle3 < 90) {
      tamcircle3 +=1;
    }
    
  fill(verde1);
  circle(610,203,tamcircle3);  //circulo columna 2 fila 2
  popMatrix();
  
  
  
 pushMatrix();
  float d2 = dist(mouseX, mouseY, 610, 304);
  
  if(d2<60) {
   float NewTam2 = map(d2, 0, 100, 95, 70);
   if(tamcircle2 < NewTam2 - 1) {
     tamcircle2 += 1.5;
  }else if (tamcircle2 > NewTam2 + 1) {
    tamcircle2 -=1.5;
  }
  }else if(tamcircle2 > 70) {
      tamcircle2 -=1;
    }
    
  fill(20,40,40);
  circle(610,304,tamcircle2);  //circulo columna 2 fila 3
  popMatrix();
 
   pushMatrix(); 
  float d = dist(mouseX, mouseY, 510, 77);
 
  if(d<60) {
    float NewTam = map(d, 0, 100, 90, 70);
    if(tamcircle < NewTam - 1) {
      tamcircle += 1.5;
  }else if (tamcircle > NewTam + 1) {
    tamcircle -= 1.5;
  }
  }else{
    if (tamcircle > 70) {
      tamcircle -=1;
    }
  }
  fill(azul2);
  circle(510,77,tamcircle);   //circulo columa 1 fila 1 
  popMatrix(); 
  
  
  
   pushMatrix();
  if (dist(mouseX, mouseY, 510, 172) < 50) {
    vibX3 = random(-1.5, 1.5);
    vibY3 = random(-1.5, 1.5);
  }else{
    vibX3 = 0;
    vibY3 = 0;
  }
  
  translate(510 + vibX3 , 172 + vibY3);
  fill(azul);
  triangle(-38,-22 ,38 ,-22 ,0 ,45 );  //triangulo columna 1 fila 2
  popMatrix();
  
  
  
   pushMatrix();
  if(dist(mouseX , mouseY, 510, 283) < 50) {
    vibX4 = random(-1.5, 1.5);
    vibY4 = random(-1.5, 1.5);
  }else{
    vibX4 = 0;
    vibY4 = 0;
  }
  translate(510 + vibX4 , 283 + vibY4);
  fill(celeste2);
  triangle(-37, 22, 38, 22, 0, -44); //triangulo columna 1 fila 3
  popMatrix();
 
  if(apreto){
  VERDE=color(120,200,215);
  CELESTE2=color(40,200,100);
  }  
 if(apreto2){
  CELESTE=color(0, 200, 215);
  CIAN=color(120,200,215);
 }
}
 
 void mouseClicked() {
if (mouseX >= 0 && mouseX <= 420 && mouseY >= 0 && mouseY <= 400) {
  println("reinicio");
    estado = 0;
    tamcircle = 70;
    tamcircle2 = 70;
    tamcircle3 = 90;
  }
if (mouseX >= 585 && mouseX <= 585 + 50 && mouseY >= 79 && mouseY <= 79 + 50) {
   apreto=true;}
   
if (mouseX >= 685 && mouseX <= 685 + 50 && mouseY >= 252 && mouseY <= 252 + 50) {
    apreto2=true;}
}
    
 
 
 //if(apreto){
 //verde=color(20,0,100);
 //}
 
