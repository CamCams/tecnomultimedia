
class Estado {
  // -----------------------------------------------------
  //PROPIEDADES

  PFont texto;
  PImage[]f;
  float posx,G;
  boolean c;
  FMov[] m=new FMov[5];

  // -----------------------------------------------------
  //CONSTRUCTOR
  Estado() {
    posx=random(width, 900);
    texto=createFont("FingerPaint-Regular.ttf", 30);
    f=new PImage[6];
    for (int i=0; i<6; i++) {
      f[i]=loadImage("fondo0"+i+".png");
    }

    for (int i=0; i<5; i++) {
      m[i]= new FMov();
    }
  }

  // -----------------------------------------------------
  //MÉTODOS
  void Menu() {
    
    f[0].resize(width, height);
    background(f[0]);
    textFont(texto);
    textAlign(CENTER);
    
    G=90*sin(0.1*frameCount)+110; //Parpadeo texto
    fill(0,G);
    
    text("'Espacio' para iniciar", width/2, 320);
    fill(0);
    text("¡Salta las piedras para huír!", width/2, 220);
    
  }
  void Jugar() {
    f[1].resize(width, height);
    background(f[1]);
    f[3].resize(200, 200);
    posx-=4;

    for (int i=0; i<5; i++) {
      m[i].dibujar();
      m[i].update();
      m[i].reciclar();
    }
  }
}
