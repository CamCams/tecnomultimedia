void setup(){
  size(600,600);
  background(255); 
}

void draw(){
  
  // ROJO,VERDE,AZUL
  
  noStroke();
  fill(255,0,0);
  triangle(0,340,60,600,300,300);
  fill(0,255,0);
  triangle(600,340,540,600,300,300);
  fill(0,0,255);
  triangle(430,0,170,0,300,300);
  
  // MAGENTA,CYAN,AMARILLO
  
  fill(255,0,255);
  triangle(0,220,0,30,300,300);
  fill(0,255,255);
  triangle(600,220,600,30,300,300);
  fill(255,255,0);
  triangle(370,600,230,600,300,300); 
  
  // TERCIARIOS
  
  fill(128,0,255);
  triangle(0,30,170,0,300,300);
  fill(255,0,128);
  triangle(0,220,0,340,300,300);
  fill(255,128,0);
  triangle(60,600,230,600,300,300);
  fill(128,255,0);
  triangle(370,600,540,600,300,300);
  fill(0,255,128);
  triangle(600,340,600,220,300,300);
  fill(0,128,255);
  triangle(600,30,430,0,300,300);
  
  //CIRCULO BLANCO Y CENTRO
  
  stroke(255);
  strokeWeight(150);
  noFill();
  circle(300,300,670);
  fill(255);
  circle(300,300,170);
  
  //LINEAS
  
  stroke(0);
  strokeWeight(1);
  triangle(300,140,160,375,440,375);
  line(300,300,300,460);
  line(300,300,440,220);
  line(300,300,160,220);
}
