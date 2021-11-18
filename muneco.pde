class muneco{
  
  //CAMPOS 
  float x, y, G;
  float N=1;
  int a;
  pingu p;
   PImage fondo;
   
  //CONSTRUCTOR
   muneco( float x_, float y_) {
    x = x_;
    y = y_;
    fondo = loadImage("fondito.png");
   }
  
  //METODOS
  void dibujar(){
    N++;
    G=90*sin(0.1*N)+130;

    noStroke();
    fill(255);
    circle(x,y,25);
    fill(50);
    circle(x-3,y-2,3); 
    circle(x+8,y-2,3);
    fill(255,206,82);
    triangle(x+2,y-1,x+2,y+4,x+18,y+2);
  }
  void reset(){
   if(keyCode==' '){
   x=200;
   y=370;
  }
  }

  void moverArriba(){
    if(keyCode==UP){
    y-=5;   
    }
   } 
   void moverAbajo(){
    if(keyCode==DOWN){
    y+=5; 
   }
   }
   void moverIzq(){
    if(keyCode==LEFT){
    x-=5;
   } 
   }
   void moverDerec(){
    if(keyCode==RIGHT){
    x+=5;
   }
   }

   
   void colision(pingu[] pi){
     for(int i = 0; i < pi.length ; i++ ){
       float x_pingu = pi[i].getX();
       float y_pingu = pi[i].getY();
       float dist_muneco = dist( x_pingu, y_pingu, x, y);
         if(dist_muneco < 20){
           println("colision");
           x=200;
           y=370;
           pi[i].rec();
         }
     }
     if(x<30){
      x=30;
     }
     if(x>370){
      x=370;
     }
     if(y>370){
     y=370;
     }
     if(x<75 && y<30 && keyCode==LEFT){
     x=75;
     }
     if(x<75 && y<30 && keyCode==UP){
     y=30;
     }
     if(x>100 && x<185 && y<30 && keyCode==RIGHT){
     x=100;
     }
     if(x>100 && x<185 && y<30 && keyCode==UP){
     y=30;
     }
     if(x>100 && x<185 && y<30 && keyCode==LEFT){
     x=185;
     }
     if(x>210 && x<300 && y<30 && keyCode==RIGHT){
     x=210;
     }
     if(x>210 && x<300 && y<30 && keyCode==UP){
     y=30;
     }
     if(x>210 && x<300 && y<30 && keyCode==LEFT){
     x=300;
     }
     if(x>320 && y<30 && keyCode==RIGHT){
     x=320;
     }
     if(x>320 && y<30 && keyCode==UP){
     y=30;
     }
   }
    void meta(){
      if(x>=70 && x<=110 && y<=-10){
       image(fondo,0,0);
       texto(1,"Victoria!");
       texto(2,"Te adentrarás en la cueva");
       fill(0,G);
       texto(3,"'Espacio' para reiniciar");
     }
     else if (x>=185 && x<=210 && y<=-10){
       image(fondo,0,0);
       texto(1,"Victoria!");
       texto(2,"Este camino te guía hacia el río");
       fill(0,G);
       texto(3,"'Espacio' para reiniciar");
     }
     else if (x>=295 && x<=320 && y<=-10){
       image(fondo,0,0);
       texto(1,"Victoria!");
       texto(2,"Seguirás el camino de la montaña");
       fill(0,G);
       texto(3,"'Espacio' para reiniciar");
    }
 }
 void texto(int tipo, String texto){
 textAlign(CENTER); 
 if(tipo==1){
   fill(0);
   textSize(50);
   text(texto,width/2,height/2);
 }else if(tipo==2){
   fill(0);
   textSize(20);
   text(texto,width/2,230);
 }else if(tipo==3){
   textSize(15);
   text(texto,width/2,270);
 }  
}
}
