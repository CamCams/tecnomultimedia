import fisica.*;
import gifAnimation.*;
import ddf.minim.*;

Gif abuela;
FWorld mundo;
FBox miaubel;
Minim minim;
AudioPlayer ganarSonido;
AudioPlayer perderSonido;
AudioPlayer perroSonido;
AudioPlayer gatoSonido;
AudioPlayer musicaJuego;
Juego juegoMiaubel;
GatosClass Gatos;
Perros perros;
Rino rino;
Techos techos;
Vidaclass vidas;

PImage fondo, mano;
int abuX, abuY;
int punto = 0;
int totalvidas = 3;
ArrayList<FCircle> gatosList = new ArrayList<FCircle>();
ArrayList<FCircle> perrosList = new ArrayList<FCircle>();


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██
//███████ ███████    ██     ██████  ██

void setup() {
  size(1500, 1000);
  Fisica.init(this);

  abuela = new Gif(this, "miaubel.gif");
  abuela.loop();
  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(100, 400);


  fondo = loadImage("fondo.png");

  miaubel = new FBox(300, 150);
  miaubel.setPosition(width/2, height - 80);
  miaubel.setRestitution(0);
  mundo.add(miaubel);
  miaubel.setStatic(true);

  miaubel.attachImage(abuela);

  Gatos = new GatosClass();
  Gatos.imgGatos();
  perros = new Perros();
  perros.imgPerros();
  rino = new Rino();
  gatosList = new ArrayList<FCircle>();
  perrosList = new ArrayList<FCircle>();
  juegoMiaubel = new Juego();
  techos = new Techos();
  techos.techosvoid();

  minim = new Minim(this);
  ganarSonido = minim.loadFile("ganarSonido.wav");
  perderSonido = minim.loadFile("perderSonido.wav");
  perroSonido = minim.loadFile("perroSonido.wav");
  gatoSonido = minim.loadFile("gatoSonido.wav");
  musicaJuego = minim.loadFile("musicaJuego.wav");

  musicaJuego.loop();
  musicaJuego.rewind();
}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
void draw() {
  image (fondo, 0, 0);



  mundo.step();
  mundo.draw();

  juegoMiaubel.funcionar();
}

void contactStarted(FContact c) {
  FBody objeto = null;
  if (c.getBody1() == miaubel) {
    if (c.getBody2().getName().equals("gato")) {
      objeto = c.getBody2();
      punto +=1;
      gatoSonido.play();
      gatoSonido.rewind();
    } else if (c.getBody2().getName().equals("perro")) {
      objeto = c.getBody2();
      totalvidas -=1;
      perroSonido.play();
      perroSonido.rewind();
    } else if (c.getBody2().getName().equals("rino")) {
      objeto = c.getBody2();
      totalvidas -=4;
    } else if (c.getBody2() == miaubel) {
      if (c.getBody1().getName().equals("gato")) {
        objeto = c.getBody2();
        punto +=1;
        gatoSonido.play();
        gatoSonido.rewind();
      } else if (c.getBody1().getName().equals("perro")) {
        objeto = c.getBody2();
        totalvidas -=1;
        perroSonido.play();
        perroSonido.rewind();
      } else if (c.getBody2().getName().equals("rino")) {
        objeto = c.getBody2();
        totalvidas -=4;
      }
    }
  }
  if (objeto != null) {
    mundo.remove(objeto);
  }
}
