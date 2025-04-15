void setup(){
  size(800,400);
  background(255);
  strokeWeight(7);
  rect(360,0,150,60);
  rect(510,0,150,60);
  fill(255,255,75);
  rect(650,0,110,60);
  fill(255);
  fill(255,0,30);
  rect(470,60,180,180);
  fill(255);
  rect(360,60,110,100);
  rect(360,150,110,120);
  fill(255,255,75);
  rect(650,60,110,95);
  fill(255);
  rect(650,155,55,85);
  rect(705,155,55,85);
  rect(650,240,110,50);
  fill(0,80,230);
  rect(650,290,110,70);
  fill(255);
  rect(560,240,90,50);
  rect(560,290,90,45);
  fill(0);
  rect(560,330,90,30);
  fill(255);
  rect(560,360,200,90);
  fill(255,0,30);
  rect(760,290,90,120);
  fill(255);
  rect(760,0,80,300);
  fill(0);
  rect(470,240,90,90);
  fill(255,255,75);
  rect(360,270,110,300);
}
void draw(){
  PImage img;
  img=loadImage("cuadro.jpg");
  image(img,0,0,410,400);
  
} 
