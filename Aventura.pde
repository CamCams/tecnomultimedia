class Aventura {

  // -----------------------------------------------------
  //PROPIEDADES
  String Estado;
  Juego j;
  Pantalla p;
  Boton b;

  // -----------------------------------------------------
  //CONSTRUCTOR
  Aventura() {
    Estado="Inicio";
    p= new Pantalla();
    b= new Boton();
    j= new Juego();
  }

  // -----------------------------------------------------
  //MÉTODOS

  void draw() {

    //Visualización de pantallas

    if (Estado=="Inicio") {

      p.pantalla(17, "Dinosaurios");
      b.DibujarBoton(150, 500, "Inicio");
      b.DibujarBoton(450, 500, "Créditos");
    } else if (Estado=="EncuentroDinos") {

      p.pantalla(0, "Estás caminando por el bosque y de repente te encontrás con unos dinosaurios... ¿Qué hacés?");
      b.DibujarBoton(50, 520, "Intentás razonar");
      b.DibujarBoton(300, 520, "Corrés");
      b.DibujarBoton(550, 520, "Los Envenenás");
    } else if (Estado=="IntentasRazonar") {

      p.pantalla(0, "Intentás razonar con ellos pero son dinosaurios y no te entienden....");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Corres/Menu") {     

      j.dibujar(0);
    } else if (Estado=="LosEnvenenas") {

      p.pantalla(6, "Decidís envenenarlos pero tenés dos botellas y no te acordás cuál era el veneno ¿Qué botella elegís?");
      b.DibujarBoton(150, 400, "Botella 1");
      b.DibujarBoton(450, 400, "Botella 2");
    } else if (Estado=="TeComieronLosDinos") {

      p.pantalla(1, "Moriste, te comieron los dinosaurios...");
      b.DibujarBoton(550, 520, "Continuar");

    } else if (Estado=="Ganar") { //ESTADO GANAR

      p.pantalla(3, "¡Lograste escapar de los dinosaurios!");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Perder") { //ESTADO PERDER

      p.pantalla(4, "Corrés tan rápido que te tropezás con una piedra y te morís.");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="GanarContinuar") {

      p.pantalla(5, "Te cansás de correr y decidís esconderte en un árbol pero viene un apatasaurus, te confunde con las hojas y te come");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Botella1") {

      p.pantalla(7, "Elegís la botella violeta y se la das a los dinosaurios...");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Botella2") {

      p.pantalla(8, "Elegís la botella verde y se la das a los dinosaurios...");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Amor") {

      p.pantalla(12, " Te confundiste de botella, les diste una posión de amor...");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Fiesta") {

      p.pantalla(9, "Los dinosaurios se enamoran y te invitan a su fiesta de compromiso");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="Asesino") {

      p.pantalla(14, "¡Felicitaciones, sos un asesino de dinosaurios!");
      b.DibujarBoton(550, 520, "Continuar");
    } else if (Estado=="creditos1") {//pantalla créditos 1

      p.creditos(2);
      b.DibujarBoton(550, 520, "Reiniciar");
    } else if (Estado=="creditos2") {//pantalla créditos 2

      p.creditos(4);
      b.DibujarBoton(550, 520, "Reiniciar");
    } else if (Estado=="creditos3") {//pantalla créditos 3 

      p.creditos(3);
      b.DibujarBoton(550, 520, "Reiniciar");
    } else if (Estado=="creditos4" ) {//pantalla créditos 4

      p.creditos(1);
      b.DibujarBoton(550, 520, "Atrás");
    } else if (Estado=="Jugar") {

      j.dibujar(1);
      j.update(this);
    }

    println("El estado es: "+Estado); 
  }

  void PantallaPerder() {
    Estado="Perder";
  }
  void PantallaGanar() {
    Estado="Ganar";
  }


  void mouse() {

    //Estado de la pantalla e interactividad de los botones/zona de botones

    if (Estado=="Inicio" &&  b.AreaBoton(150, 500)) {
      Estado= "EncuentroDinos";
    } else if (Estado=="EncuentroDinos" &&  b.AreaBoton(50, 520)) {
      Estado="IntentasRazonar";
    } else if (Estado=="EncuentroDinos" &&  b.AreaBoton(300, 520)) {
      Estado="Corres/Menu";
    } else if (Estado=="EncuentroDinos" &&  b.AreaBoton(550, 520)) {
      Estado="LosEnvenenas";
    } else if (Estado=="IntentasRazonar" && b.AreaBoton(550, 520)) {
      Estado="TeComieronLosDinos";
    } else if (Estado=="Ganar" &&  b.AreaBoton(550, 520)) {
      Estado="GanarContinuar";
    } else if (Estado=="LosEnvenenas" &&  b.AreaBoton(150, 400)) {
      Estado="Botella1";
    } else if (Estado=="LosEnvenenas" &&  b.AreaBoton (450, 400)) {
      Estado="Botella2";
    } else if (Estado=="Botella1" &&  b.AreaBoton(550, 520)) {
      Estado="Amor";
    } else if (Estado=="Amor" &&  b.AreaBoton(550, 520)) {
      Estado="Fiesta";
    } else if (Estado=="Botella2" && b.AreaBoton(550, 520) ) {
      Estado="Asesino";
    } else if (Estado=="TeComieronLosDinos" && b.AreaBoton(550, 520) ) {
      Estado="creditos1";
    } else if (Estado=="creditos1" &&  b.AreaBoton(550, 520)) {
      Estado="Inicio";
    } else if (Estado=="Perder" &&  b.AreaBoton(550, 520)) {
      Estado="creditos1";
    } else if (Estado=="GanarContinuar" &&  b.AreaBoton(550, 520)) {
      Estado="creditos1";
    } else if (Estado== "Fiesta" &&  b.AreaBoton(550, 520) ) {
      Estado="creditos2";
    } else if (Estado=="creditos2" &&  b.AreaBoton(550, 520)) {
      Estado="Inicio";
    } else if (Estado=="Asesino" && b.AreaBoton(550, 520) ) {
      Estado="creditos3";
    } else if (Estado=="creditos3" && b.AreaBoton(550, 520) ) {
      Estado="Inicio";
    } else if (Estado=="Inicio" && b.AreaBoton(450, 500) ) {
      Estado="creditos4";
    } else if (Estado=="creditos4" &&  b.AreaBoton(550, 520)) {
      Estado="Inicio";
    } else if (Estado=="Perder" && b.AreaBoton(550, 520)) {
      Estado="creditos1";
    }
  }

  void teclado() {
    if (Estado=="Corres/Menu") {
      j.controles();
      Estado="Jugar";
    } else if (Estado=="Jugar") {
      j.controles();
    }
  }
}
