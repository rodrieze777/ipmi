//https://youtu.be/pnoTmK0O0C8
//TP3 comisión 5
//Rodrigo Ezequiel Rodriguez - legajo 122865/2

int estado = 0;

float anguloTriangulo = 0;
float anguloTriangulo2 = 0;
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
color rojo = color(255,0,0);


color[][] patronColores = {
  { verde2, azul, azul2 }, // fila 1
  { verde, celeste, azul },   // fila 2
  { verde1, verde, celeste2 },  // fila 3
  { azul, azul , azul }  // fila inferior
  
};
color[] patronColoresK = { celeste2, celeste, verde2 }; //Segunda Columna



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

for(int j=0; j<3 ; j=j+1){
for(int i=0; i<3 ; i=i+1){
  fill(patronColores[j][i]);
  rect(460 + i*100, 27 + j*100 ,100,100);
 }
}

for(int r=0; r<3 ; r=r+1){
  fill(patronColores[3][r]);
  rect(460 + r*100 ,327,100,26);
  
}
  
for(int k=0; k<3 ; k=k+1){
  fill(patronColoresK[k]);
  rect(560, 53 + k*100 ,100,100);
 
 }
 
   // Figuras
   
  pushMatrix();
  translate(710, 73);
  if (dist(mouseX, mouseY, 710,73) < 50) {
    anguloTriangulo += radians(1.2);
  }
  rotate(anguloTriangulo);
  fill(verde2);
  triangle(-40, -23 ,40 ,-23 ,0 ,47 );   //triangulo columna 3 fila 1
  popMatrix();
  
  pushMatrix();
  translate(710,183);
  if(dist(mouseX , mouseY,  710,183) < 50) {   
    anguloTriangulo2 += radians(1.2);
  }
  rotate(anguloTriangulo2);
  fill(verde);
  triangle(-40, 22, 40, 22, 0, -43); //triangulo columna 3 fila 2
  popMatrix();
  
  
  
  
  fill(celeste);
  rect(685,252,50,50);  //rectangulo columna 3 fila 3
  
  
  
  
  fill(verde1);
  rect(585,79,50,50);  //rectangulo columna 2 fila 1
  
  
  
  if(dist(mouseX, mouseY, 610, 203) < tamcircle3 && tamcircle3 > 50 ) {
   tamcircle3 --;
  }
  fill(verde1);
  circle(610,203,tamcircle3);  //circulo columna 2 fila 2
  
  
  
  if(dist(mouseX, mouseY, 610, 304) < tamcircle2 && tamcircle2 < 90 ) {
   tamcircle2 ++;
  }
  fill(20,40,40);
  circle(610,304,tamcircle2);  //circulo columna 2 fila 3
 
 
 
  if(dist(mouseX, mouseY, 510, 77) < tamcircle && tamcircle < 90 ) {
   tamcircle ++;
  }
  fill(azul2);
  circle(510,77,tamcircle);   //circulo columa 1 fila 1 
  
  
  
   pushMatrix();
  translate(510, 172);
  if (dist(mouseX, mouseY, 510, 172) < 50) {
    anguloTriangulo3 -= radians(1.2);
  }
  
  rotate(anguloTriangulo3);
  fill(azul);
  triangle(-38,-22 ,38 ,-22 ,0 ,45 );  //triangulo columna 1 fila 2
  popMatrix();
  
  
  
   pushMatrix();
  translate(510,283);
  if(dist(mouseX , mouseY, 510, 283) < 50) {
    anguloTriangulo4 -= radians(1.2);
  }
  rotate(anguloTriangulo4);
  fill(celeste2);
  triangle(-37, 22, 38, 22, 0, -44); //triangulo columna 1 fila 3
  popMatrix();
 
  fill(rojo);
  rect(720,360,70,35);
 
 
 }
 
 void mouseClicked() {
if (mouseX >= 720 && mouseX <= 790 && mouseY >= 360 && mouseY <= 400) {
    estado = 0;
    anguloTriangulo = 0;
    anguloTriangulo2 = 0;
    anguloTriangulo3 = 0;
    anguloTriangulo4 = 0;
    tamcircle = 70;
    tamcircle2 = 70;
    tamcircle3 = 90;
  }
}
    
 
 
 
 
