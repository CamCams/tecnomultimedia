class FMov {
  // -----------------------------------------------------
  //PROPIEDADES
  PImage imgN, imgA;
  float posxN, posxA, posyN, posyA; // (A = Árbol, N = Nube)

  // -----------------------------------------------------
  //CONSTRUCTOR
  FMov() {
    posxN=random(width);
    posxA=random(100, 700);
    posyN=random(0, 200);
    posyA=300;

    imgN=loadImage("fondo04.png"); // Nube
    imgA=loadImage("fondo03.png"); // Árbol
  }

  // -----------------------------------------------------
  //MÉTODOS
  void dibujar() {
    posxN-=2;
    posxA-=3;

    image(imgN, posxN, posyN);
    image(imgA, posxA, posyA);
    imgN.resize(200, 200);
    imgA.resize(200, 200);
  }

//Velocidad
  void update() {
    posxN-=1 ;
    posxA-=2 ;
  }

//Reciclar elementos
  void reciclar() {
    int anchoDeImagenN = imgN.width;
    int anchoDeImagenA = imgA.width;
    
    if ( posxN > width ) {
      posxN = -anchoDeImagenN;
    } else if ( posxN < -anchoDeImagenN ) {
      posxN = width;
    }
    if ( posxA > width ) {
      posxA = -anchoDeImagenA;
    } else if ( posxA < -anchoDeImagenA ) posxA = width;
  }
}
