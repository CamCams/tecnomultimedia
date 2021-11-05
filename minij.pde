class minijuego{
  
  // CAMPOS
  int estado, cant;
  PImage fondo;
  muneco m;
  pingu p;
  pingu[] pingus;
  
 //CONSTRUCTOR
   minijuego(int cantidad){
     fondo = loadImage("fondito.png");
     cant=cantidad;
     estado = 0;
      m = new muneco(200,370);
      p = new pingu(random(30,345));
  }
  
  //METODOS
  void act(){
    for( int i = 0 ; i < cant ; i++ ){
    pingus[i].act();
    pingus[i].dibujar();
    }
  }
  
  void dibujar(){
    background(fondo);
    m.dibujar();
  }
  
  void teclas(){
   m.moverArriba();
   m.moverAbajo();
   m.moverIzq();
   m.moverDerec();
  }
}
