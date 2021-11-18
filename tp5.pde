/*LINK: https://youtu.be/RmZaU6I4UWY
_________________________ */
minijuego juego;

void setup(){
  size(400,400);
  juego = new minijuego (7);
}

void draw(){
 juego.dibujar();
 juego.act();
}

void keyPressed(){
 juego.teclas();
}
