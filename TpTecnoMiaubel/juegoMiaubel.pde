class Juego {

  Puntos puntos;
  Vidaclass vidas;

  PImage hudGatos, pantNombre, pantGanar, pantPerder, pantRino;
  PImage[] frame = new PImage[5];
  int pantalla = 0;
  int tiempoPorImagen = 60; // Duración en frames para cada imagen
  int indiceImagenActual = 0; // Índice de la imagen actual
  boolean secuenciaReproducida = false;
  int tiempoEspera = 180;


  Juego() { //Constructor con imagenes
    pantNombre = loadImage ("pantNombre.png");
    pantGanar = loadImage ("pantGanar.png");
    pantGanar.resize(1500, 1000);
    pantPerder = loadImage ("pantPerder.png");
    pantRino = loadImage ("perderRino.png");
    hudGatos = loadImage ("gatoContador.png");

    for (int i = 0; i < frame.length; i++) {
      PImage framesJuego = loadImage("frame" + i + ".png");
      frame[i] = framesJuego;
    }
  }

  void funcionar() {
    //pantallas del juego

    if (pantalla == 0) {

      if (!secuenciaReproducida) {
        indiceImagenActual = int(frameCount / tiempoPorImagen) % frame.length;
        image(frame[indiceImagenActual], 0, 0, width, height);
      }
      if (indiceImagenActual == frame.length - 1) {
        secuenciaReproducida = true; 
        pantalla = 1;
      }
    }
    if (pantalla == 1) {
      nombreJuego();
    }
    if (pantalla == 2) {
      pantalla = 2;
      vidas = new Vidaclass();
      vidas.vidaJuego();
      vidas.mostrar();
      jueguito();
    }
    if (punto >=5) {
      pantalla = 3;
      ganar();
    }
    if (totalvidas == 0) {
      pantalla = 4;
      perder();
    }    
    if (totalvidas <= -1) {
      pantalla = 5;
      perderRino();
    }
  }
  void nombreJuego() {
    image (pantNombre, 0, 0);
  }

  void ganar() {
    image (pantGanar, 0, 0);
    ganarSonido.play();
    musicaJuego.pause();
    musicaJuego.rewind();
  }

  void perder() {
    image (pantPerder, 0, 0);
    perderSonido.play();
    musicaJuego.pause();
    musicaJuego.rewind();
  
  }

  void perderRino() {
    image (pantRino, 0, 0);
    perderSonido.play();
    musicaJuego.pause();
  
  }

  void jueguito() {
    image (hudGatos, 30, 100);

    Puntos puntos = new Puntos(35, 25, punto);
    puntos.dibujar(); 
    Gatos.indxGatos();
    perros.indxPerros();
    musicaJuego.play();
  }
}
