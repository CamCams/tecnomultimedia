// LINK EXPLICACIÓN: https://youtu.be/Y0z_BL15kYo
// -----------------------------------------------------

Aventura a;

void setup() {
  size(800, 600);
  a= new Aventura();
}

void draw() {
  a.draw();
}

void mousePressed() {
  a.mouse();
}

void keyPressed() {
  a.teclado();
}
