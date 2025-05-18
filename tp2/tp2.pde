//TP2 comisión 2
//Rodrigo Ezequiel Rodriguez - legajo 122865/2
int estado = 0;
int duración1 = 400; //tiempo de 6.66 segundos
int duración2 = 300; //tiempo de 5 segundos
int duración3 = 540; //tiempo de 9 segundos
int duración4 = 720; //tiempo de 12 segundos
int duración5 = 600; //tiempo de 10 segundos
int duración6 = 600; //tiempo de 10 segundos
int duración7 = 540; //tiempo de 9 segundos

//variables de movimiento
float presentación;  //variable de desplazamiento de arriba a abajo
float presentación2; //variable de desplazamiento de abajo a arriba
float themist;     //variable de desplazamiento de izquierda a derecha - portada del libro 
float xTexto;
float x1 = 640;
float x2 = 0;
float x3 = 0; //presentacion 4
float x4 = 0;
float x5 = 0;
float x6 = 0;
float x7 = 0;
float x8 = 0;
float x9 = 0;
float x10 = 0;
float x11 = 0; //imagen10 ultima diapositiva
float x12 = 0; //imagen10 ultima diapositiva
float x13 = 0;
float y1 =170;
float y2 = 0;
float y3 = 300;
float y4 = 253;
float y5 = 0;
float y6 = 0;
float y7 = 253;
float y8 = 0;
float y10 =-50;
float y11 = 0; //imagen10 ultima diapositiva
float y12 = 0;
float y13 = 270;
float velocidad = 6;
float velocidad2 = 2;
float velocidad3 = 2;
float velocidad4 = 5;
float velocidad5 = 1;
float velocidad6 = 1;
float velocidad7 = 2;
float velocidad8 = 4;
float velocidad9 = 2;
float velocidad10 = 2;
float velocidad11 = 2;
float velocidad12 = 2;
float velocidad13 = 2;
float velocidad14 = 2; //imagen10 ultima diapositiva
float velocidad15 = 2;
float velocidad16 = 3;
float velocidad17 = 2;
float xDestino = 0;
float xDestino2 = 330;


int duración = 400; //10 seg aprox
int dir = 1;
PFont fuente;
PFont fuente2;
PFont fuente3;


PImage portada;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;


String texto0;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;
String texto8;
String texto9;


void setup() {
size(640,480);
frameRate(30);
xTexto = width;
x3 = width;
x6 = width;
x12 = width;
//fuentes de texto
fuente=loadFont("BookmanOldStyle-Bold-48.vlw");
fuente2=loadFont("ComicSansMS-Bold-48.vlw");
fuente3=loadFont("FranklinGothic.vlw");


//variables de float
presentación = 0;
presentación2 = 0;
themist = 0;
xTexto= 0;


//imagenes
portada= loadImage("portada.jpg");
img1 = loadImage("imagen1.jpg");
img2 = loadImage("imagen2.jpg");
img3 = loadImage("imagen3.jpg");
img4 = loadImage("imagen4.jpg");
img5 = loadImage("imagen5.jpg");
img6 = loadImage("imagen6.jpg");
img7 = loadImage("imagen7.jpg");
img8 = loadImage("imagen8.jpg");
img9 = loadImage("imagen9.jpg");
img10 = loadImage("imagen10.jpg");
img11 = loadImage("imagen11.jpg");


//textos
texto0 = " La Niebla \n es una historia que se remonta en la \n región norte de Inglaterra \n , en un pueblo llamado Bridgton \n en Main en esto se \n nos presenta a David junto a su \n esposa e hijo, David en su casa tiene \n un especie de vision en la cual \n ve como a causa de una tormenta \n las ventanas de su casa explotaban \n y su familia salía herida \n , tras esa vision David junto\n  a su familia durmieron en el sótano \n por seguridad. ";
texto1 = " Tras el cesar de la tormenta David junto a su familia vieron el desastre \n  de la tormenta junto a las ventanas rotas de su vision tras eso David \n junto a Billy y Brenton Norton (su vecino) viajan hasta el supermercado \n  para comprar provisiones por si la tormenta se llegaba a prolongar.";
texto2 = " Tras llegar al supermercado y tomar lo necesario se comienza a \n generar una especie de espesa niebla que cubrio al estacionamiento \n junto con el pueblo completo y se nos da a entender que \n está plago al mundo entero , la nieva era como un vacío blanquecino \n el cual aparentaba venir de una isla cercana en la que se rumoreaba \n que el ejercito hacia experimentos bajo el nombre clave de punta \n de flecha, tras la repentina niebla y la llegada gente diciendo que \n había algo en la niebla que estaba matando personas.";
texto3 = " David junto a Billy y Norton pasaron \n el día ahi pero a causa de \n un repentino corte de energía David junto \n a un grupo de lugareños y trabajadores \n debían ir al generador a arreglar este apagón \n pero para esto Debian abrir la puerta \n del muelle de carga , al comenzar a \n abrir la puerta repentinamente \n ingreso un especie de tentáculo \n gigante junto muchos más \n los cuales se asemejaban a los de un calamar";
texto4 = " Inesperadamente estos se \n comenzaron a abrir revelando una gigante fila \n de dientes y ventosas con las que atrapo a \n uno de los trabajadores, a pesar del esfuerzo \n de David por sujetar al chico los tentáculos \n eran mas fuertes tras esto David activa la \n puerta de carga así haciendo que los \n tentáculos se vayan pero no antes de que \n uno de ellos sea cortado por la puerta.";
texto5 = " Tras lo sucedido van con Norton para contarle \n lo que sucedió en el puerto de carga mas \n este no les creí y los tomaba de chiste \n  después de una pelea entre David y Norton, \n este ultimo decide abandonar la tienda en \n busca de ayuda junto a un grupo pero antes \n David le colocaría una cuerda a uno de los \n integrantes en la cintura , al pasar de \n los segundos que salió el grupo la cuerda \n repentinamente es jalada y queda tensada \n entre los esfuerzos de David";
texto6 = " Y la fuerza de lo que atrapo a aquel \n hombre(la aracnilangosta) la cuerda seria \n elevada así arriba y de un momento al otro \n esta perdería tension mientras que David \n junto al grupo q tenían la cuerda saldría \n disparados para tras por la fuerza que \n estaban aplicandotras reincorporarse este \n junto al grupo acercarian la cuerda \n  a la entrada del supermercado pero \n  quedarian horrorizados al ver la cuerda \n  cubierta de sangre junto con lo que \n quedaba del torso de aquel hombre. ";
texto7 = " Es asi que estos deciden resguardar el \n supermercado poniendo barricadas en las \n ventanas pero a causa de las lamparas en medio \n de la noche terminarian atrayendo la atención \n de las Moscas Escorpion y la del Terobuitre el \n cual este ultimo terminaria rompiendo una \n ventana asi dejando via libre a las moscas \n Escorpion a esto el lugar se volveria una \n escena de muerte con los Terobuitres y las \n Moscas muertas pero llevandose mucha gente \n con ellos, tras esto David junto a un \n grupo de sobrevivientes irian a una farmacia \n para buscar antibioticos entre otras cosas \n para los heridos ahi es donde se encontrarian \n con las viudas grises, una especie de \n colonia de arañas gigantes con exoesqueleto \n y telaraña acida, tras escapar de ahi y \n volver al supermercado este se veria abrumados.";
texto8 = " Tras ver que los heridos habian fallecidos y \n tras el comportamiento de las personas en el \n mismo asi que decidiria salir junto a un grupo \n y Billy a su auto y buscar a su esposa Stephanie \n la cual se habia quedado en casa , asi \n mismo ellos anduvieron por la espesa \n niebla hasta su casa y ver como la \n misma estaba muerta, ya sin mas que hacer y \n con lo poco que les quedaba de combustible \n decidieron transitar la niebla hasta llegar \n al final de la misma en esto terminaria llegando ";
texto9 = " A una autopista en la que repentinamente se \n comenzaron  a sentir temblores que sacudia \n la camioneta , temblores que provenian \n de un monstruo colossal el cual tenia \n cientos de moscas escorpion volando alrededor de \n sus patas y debajo de su cuerpo este \n simplemente los ignoro y siguio caminando y \n asi la novela acaba con un final abierto.";

//estado
estado = 0;


}


void draw(){
   background(0);
   fill(255);
   println(frameCount);
   
   //presentación 1
   
   if(estado==0){
   textFont(fuente);
   image(portada,0,0,themist,480); //crecimiento del largo
   themist+=4;
   if(themist>=300)
     themist=300;
     
   textSize(17);
   text(texto0,302,presentación);
   presentación+=3;
   if(presentación>=50)
     presentación=50;
     
     duración1--;
     if(duración1 <= 0) {
      estado = 1;
  }
   }
   else if(estado==1){
     //presentación 2
     textFont(fuente2);
     image(img1,0,0,presentación,350);
     presentación+=2;
     if(presentación>=640);
     presentación=640;
     

     textSize(17);
     text(texto1,xTexto,380);
     xTexto+=4;
     if(xTexto>=40)
     xTexto=40;
     
     
     if (duración2 > 0) {
       duración2--;
     }else{
       estado = 2;
     }
   }
    //presentación 3
   else if (estado ==2){
   textFont(fuente);
   image(img2,x1,y1,640,320);
   if(x1 > xDestino) {
     x1-=velocidad;
   }else{
     x1= xDestino;
   textSize(17);
   text(texto2,0,20,xTexto);
   xTexto+=3;
   if(xTexto>=170)
   xTexto=170;
  
  if (duración3 > 0) {
       duración3--;
     }else{
       estado = 3;
     }
   }
   }
    //presentación 4
    else if(estado==3){
      textFont(fuente2);
      image(img3,x2,0,290,235);
      if(x2 < 10) {
     x2+= velocidad2;
      }else{
        x2 = 10;
     
     textSize(15);
     text(texto3,305,y2);
     y2+= velocidad3;
     
     if(y2>=20)
        y2=20;
     image(img4,x3,235,290,330);
     if(x3 > 340) {
     x3-=velocidad4;
     }else{
     x3= 340;
     
     textSize(15);
     text(texto4,x4,y4);
     if(x4<5) { 
     x4+= velocidad5;
     }else{
       x4 = 5;
       
     if (duración4 > 0) {
       duración4--;
     }else{
       estado = 4;

 }
}
 }
  }
}
     //presentación 5
     else if(estado==4){
       textFont(fuente2);
       image(img5,x5,0,260,235);
      if(x5 < 10) {
     x5+= velocidad6;
      }else{
        x5 = 10;
       
     textSize(15);
     text(texto5,278,y5);
     y5+= velocidad7;
     
     if(y5>=20)
        y5=20;
        
    image(img6,x6,245,300,330); //duplicado
     if(x6 > 330) {
     x6-=velocidad8; 
     }else{
      x6 = 330;
     textSize(15);
     text(texto6,x7,y7);
     if(x7<5) {
       x7+= velocidad9;
       }else{
       x7 = 5;
     
     if (duración5 > 0) {
       duración5--;
     }else{
       estado = 5;
}}   
}
 }
}
      //presentación 6
      else if (estado==5){
      textFont(fuente3);
      image(img7,x8,y8,250,150);
      if(x8 < 10) {
       x8+= velocidad10;
       } else {
       x8 = 10;
  } 
      image(img8,x9,160,250,150);
      if (x9 < 11) {
       x9+= velocidad11;
       } else {
       x9 = 11;
      
      image(img9,x10,325,250,150);
      if (x10 < 11) {
       x10+= velocidad12;
       } else {
       x10 = 11;
       textSize(19);
       text(texto7,270,y10);
       if(y10 < 70){
        y10+= velocidad13;
       }else{
         y10 = 70;
         
         if (duración6 > 0) {
       duración6--;
     }else{
       estado = 6;
      
}
}
}
}
}
      //presentación 7
      else if (estado==6){
      textFont(fuente2);
      image(img10,x11,y11,250,250);
      if(x11 < 10) {
       x11+= velocidad14;
       } else {
       x11 = 10;
       
       textSize(17);
     text(texto8,265,y12);
     y12+= velocidad15;
     if(y12>=20)
        y12=20;
        
     image(img11,x12,253,300,330);
     if(x12 > 330) {
     x12-=velocidad16; 
     }else{
      x12 = 330;
      
      textSize(15);
     text(texto9,x13,y13);
     if(x13<5) {
       x13+= velocidad17;
       }else{
       x13 = 5;
       
     
    fill(200, 50, 50); 
    rect(100, 420, 150, 50);
    fill(255);
    textSize(18);
    text("REINICIAR", 125, 450);

      
}}}}
}
    void mousePressed() {
  // Solo permitir reiniciar si está en el último estado
  if (estado == 6) {
    if (mouseX >= 100 && mouseX <= 250 && mouseY >= 420 && mouseY <= 450) {
      reiniciarPresentación();
    }
  }
}
   void reiniciarPresentación() {
  // Reinicia estado
  estado = 0;

  // Reinicia contadores de duración
  duración1 = 400;
  duración2 = 300;
  duración3 = 540;
  duración4 = 720;
  duración5 = 600;
  duración6 = 600;
  duración7 = 540;

  // Reinicia variables de movimiento
  presentación = 0;
  presentación2 = 0;
  themist = 0;
  xTexto = 0;
  x1 = 640;
  x2 = 0;
  x3 = width;
  x4 = 0;
  x5 = 0;
  x6 = width;
  x7 = 0;
  x8 = 0;
  x9 = 0;
  x10 = 0;
  x11 = 0;
  x12 = width;
  x13 = 0;
  y1 = 170;
  y2 = 0;
  y3 = 300;
  y4 = 253;
  y5 = 0;
  y6 = 0;
  y7 = 253;
  y8 = 0;
  y10 = -50;
  y11 = 0;
  y12 = 0;
  y13 = 270;

}
