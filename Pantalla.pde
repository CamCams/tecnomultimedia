class Pantalla {
  // -----------------------------------------------------
  //PROPIEDADES

  PImage [] pantalla;
  String Estado;
  PFont txt_;
  int posY;


  // -----------------------------------------------------
  //CONSTRUCTOR
  Pantalla() {
    pantalla= new PImage [19];
    posY=600;
    txt_=createFont("CardenioModern-Bold.otf", 30);

    for (int i=0; i<pantalla.length; i++) {
      pantalla[i]=loadImage("pantalla"+i+".jpg");
    }
  }
  // -----------------------------------------------------
  //MÉTODOS

  //Función ajustar fondos
  void fondoImg (int a) {
    pantalla[a].resize(width, height);
    background(pantalla[a]);
  }

 // Fondos según estado
  void pantalla(int Estado, String txt) {
    if (Estado==0) {
      fondoImg(0);
    } else if (Estado==1) {
      fondoImg(1);
    } else if (Estado==2) {
      fondoImg(2);
    } else if (Estado==3) {
      fondoImg(3);
    } else if (Estado==4) {
      fondoImg(4);
    } else if (Estado==5) {
      fondoImg(5);
    } else if (Estado==6) {
      fondoImg(6);
    } else if (Estado==7) {
      fondoImg(7);
    } else if (Estado==8) {
      fondoImg(8);
    } else if (Estado==9) {
      fondoImg(9);
    } else if (Estado==11) {
      fondoImg(11);
    } else if (Estado==12) {
      fondoImg(12);
    } else if (Estado==14) {
      fondoImg(14);
    } else if (Estado==15) {
      fondoImg(15);
    } else if (Estado==17) {
      fondoImg(17);
    }

    //texto de pantallas
    textAlign(CENTER);
    textFont(txt_);
    textSize(20);
    textLeading(45);
    fill(0);
    text(txt, 160, 20, 500, 1000);
  }

  //Pantallas créditos
  void creditos(int Estado) {
    if (Estado==1) {
      fondoImg(13);
    } else if (Estado==2) {
      fondoImg(10);
    } else if (Estado==3) {
      fondoImg(18);
    } else if (Estado==4) {
      fondoImg(16);
    }

  //Texto créditos
    pushStyle();
    fill(0);
    text("Dinosaurios", width/2, posY);
    text("Camila Machado", width/2, posY+100);
    text("Agustina Gil Tudor", width/2, posY+150);
    text("Comisión 2", width/2, posY+200);

    posY--;
    if (posY<=-200) { //Movimiento créditos
      posY=710;
    }
    popStyle();
  }
}
