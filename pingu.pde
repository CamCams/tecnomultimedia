class pingu{
  
  //CAMPOS
  float x,y,vel;
  
  //CONSTRUCTOR
    pingu(float y_) {
    y = y_;
    vel = random( 2, 7 );
    }
    
  //METODOS
   void act(){
     x+= vel;
     rec();
   }
   
   void dibujar(){
     fill(50);
     circle(x,y,18);
     circle(x+10,y,12);
     fill(255,206,82);
     triangle(x+16,y-2,x+16,y+2,x+25,y+2);
     fill(255);
     circle(x+12,y-3,2);
     circle(x+12,y+3,2);
   }
   
   void rec(){
     if (x>410){
       y= random(30,345);
       x= -10;
       vel = random (2,5);
     }
   }  
   
  
}
