class minijuego{
  
  // CAMPOS
  int estado, cant;
  float N=1;
  float G;
  PImage fondo;
  muneco m;
  pingu p;
  pingu[] pingus;
  
 //CONSTRUCTOR
   minijuego(int cantidad){
     fondo = loadImage("fondito.png");
     cant=cantidad; 
     estado = 0;
     pingus = new pingu[cant];
     m = new muneco(200,370);
     for( int i = 0 ; i < cant ; i++ ){
    pingus[i]= new pingu(cant);
    }
  }
  
  //METODOS
  void act(){
    for( int i = 0 ; i < cant ; i++ ){
    pingus[i].act();
    pingus[i].dibujar();
    }
    
    m.colision(pingus);
    m.meta();
  }
  
  void dibujar(){
    background(fondo);
    N++;
    G=90*sin(0.1*N)+130;
    fill(0,G);
    textSize(10);
    textAlign(CENTER);
    text("'Espacio' para reiniciar",60,390);
    m.dibujar();
  }
  
  void teclas(){
   m.moverArriba();
   m.moverAbajo();
   m.moverIzq();
   m.moverDerec();
   m.reset();
  }
}
