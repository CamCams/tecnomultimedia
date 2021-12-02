class Juego {

  // -----------------------------------------------------
  // PROPIEDADES (variables)
  Pantalla k;
  Personaje p;
  Estado e;
  Obstaculo o;

  int pantalla, conver;
  float N=0, conteo;

  // -----------------------------------------------------
  // CONSTRUCTOR (setup del objeto)
  Juego() {
    k= new Pantalla();
    p=new Personaje();
    e=new Estado();
    o=new Obstaculo();
    pantalla=0;
  }

  // -----------------------------------------------------
  // METODOS (funciones)

  //Estados juego
  void dibujar(int pantalla) { //Menú
    if (pantalla==0) {
      e.Menu();
    } else if (pantalla==1) { //Jugar
      e.Jugar();
      p.dibujar();
      p.saltar();
      o.dibujar();
      o.update();
    }
  }

  void update(Aventura w) {

    if (pantalla==1) {

      //Contador
      p.update();
      conver=round(conteo); //Convertidor de float a int
      N-=0.015;
      conteo=20+N;
      pushStyle();   
      fill(0);
      if (conver<=10) {
        fill(255, 0, 0);
      }
      text("TIEMPO: " + conver, 120, 50);
      popStyle();
      
      println("Tiempo: "+conver);

      //Condicional PERDER
      if (o.colision(p.x, p.y, p.ancho, p.alto) && conteo<=19) {
        println("CHOQUE");
        w.PantallaPerder();
        N=0; //reset tiempo
      }

      //Condicional GANAR
      if (conteo<=0) {
        w.PantallaGanar();
        N=0; //reset tiempo
      }
    }
  }

  void controles() {
    if (keyCode==' ' && pantalla==0) {
      pantalla=1;
    } else if (pantalla==1) {
      p.teclado();
      }
    }
  }
