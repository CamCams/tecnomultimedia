class muneco{
  //> <
  //CAMPOS 
  float x, y;
  
  //CONSTRUCTOR
   muneco( float x_, float y_) {
    x = x_;
    y = y_;
   }
  
  //METODOS
  void dibujar(){
    noStroke();
    fill(255);
    circle(x,y,25);
    fill(50);
    circle(x-3,y-2,3); 
    circle(x+8,y-2,3);
    fill(255,206,82);
    triangle(x+2,y-1,x+2,y+4,x+18,y+2);
  }
  
 /* void colision(){
    if((x<15)&&(x>375)&&(y<15)&&(y>375)){
    }
  }
  */
  
  void moverArriba(){
    if(keyCode==UP)
    y-=10;   
   } 
   void moverAbajo(){
    if(keyCode==DOWN)
    y+=10; 
   }
   void moverIzq(){
    if(keyCode==LEFT)
    x-=10;
   } 
   void moverDerec(){
    if(keyCode==RIGHT)
    x+=10;
   }
  
  
}
