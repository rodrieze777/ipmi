void vibracionTriangulo(float x, float y, float r, color c, float x1, 
                        float y1, float x2, float y2, float x3, float y3) {

 float vibX = 0;
 float vibY = 0;
 
 if(dist(mouseX, mouseY, x, y) < r) {
   vibX = random(-1.5, 1.5);
   vibY = random(-1.5, 1.5);
 }
 pushMatrix();
 translate(x + vibX, y + vibY);
 fill(c);
 noStroke();
 triangle(x1, y1 ,x2 , y2, x3, y3);
 popMatrix();
}
float tamañoCirculo(float x, float y,float tamActual,float tamMin, float tamMax, float distanciaRef) {
  
  float d = dist(mouseX, mouseY, x,y);
  
  if(d < distanciaRef) {
    float newTam = map(d, 0, distanciaRef, tamMin, tamMax);
    if (tamActual > newTam + 0.5){
      tamActual -= (tamActual - newTam) * 0.2;
    } else if (tamActual < newTam - 0.5) {
      tamActual += (newTam - tamActual) * 0.2;
    }else{
      tamActual = newTam;
    }
  } else {
    if (tamActual < tamMax - 0.5) {
     tamActual += (tamMax - tamActual) * 0.2;
    }else if (tamActual > tamMax + 0.5) {
      tamActual -= (tamActual - tamMax) * 0.2;
    } else {
      tamActual = tamMax;
    }
  }
  return tamActual;
}
float tamañoCirculoCrece(float x, float y, float tamActual, float tamMin, float tamMax, float distanciaRef) {
  float d = dist(mouseX, mouseY, x,y);
  
  if(d < distanciaRef) {
    float newTam = map(d, 0, distanciaRef, tamMax, tamMin);
    if (tamActual > newTam + 0.5){
      tamActual -= (tamActual - newTam) * 0.2;
    } else if (tamActual < newTam - 0.5) {
      tamActual += (newTam - tamActual) * 0.2;
    }else{
      tamActual = newTam;
    }
  } else {
    if (tamActual < tamMin - 0.5) {
     tamActual += (tamMin - tamActual) * 0.2;
    }else if (tamActual > tamMin + 0.5) {
      tamActual -= (tamActual - tamMin) * 0.2;
    } else {
      tamActual = tamMin;
    }
  }
  return tamActual;
}
