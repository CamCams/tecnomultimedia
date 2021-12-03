class Boton {

  // -----------------------------------------------------
  //PROPIEDADES
  PFont tipo;

  // -----------------------------------------------------
  //CONSTRUCTOR
  Boton() {
    tipo=createFont("FingerPaint-Regular.ttf", 20);
  }

  // -----------------------------------------------------
  //MÉTODOS

  void DibujarBoton(int x, int y, String t) {
    pushStyle();
    textAlign(CENTER);
    noStroke();
    fill(255, 238, 108);
    rect(x, y, 200, 60, 20);
    fill(0);
    textFont(tipo);
    text(t, x+100, y+40);
    popStyle();
  }

  boolean AreaBoton(float x_, float y_) {
    if (mouseX>x_ &&  mouseX<x_ +200 && mouseY>y_ && mouseY<y_+60) {
      return true;
    } else
      return false;
  }
}
