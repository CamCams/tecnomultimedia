//LEER README

minijuego juego;

void setup(){
  size(400,400);
  juego = new minijuego (6);
}

void draw(){
 juego.dibujar();
}

void keyPressed(){
 juego.teclas();
}
