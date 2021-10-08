
PImage [] personaje = new PImage[5];
PImage [] fondos = new PImage [12];
int estado;

void setup() { // Carga de imágenes
  for (int i = 0; i < personaje.length; i++){
  personaje[i] = loadImage("cosa"+i+".png");
  }
  for (int i = 0; i < fondos.length; i++){
    fondos[i] = loadImage("fondo"+i+".png");
  }
   
  size(400, 400); 
  estado=11; // Menú
}

void draw() {  // Pantallas del juego
  
 
if (estado == 0){
  image(fondos[0],0,0);
  image(personaje[0],-50,0); 
  cuadro("Ah.. El frio, la nieve, las montañas.. sientes que nada puede molestarte.","Continuar");
}
 if(estado == 1){
    image(fondos[0],0,0);
    image(personaje[4],-50,0); 
    cuadro("Nunca habías estado tan tranquilo.","Continuar");
 } 
 if(estado == 2){
    image(fondos[1],0,0);
    image(personaje[2],-50,0); 
    cuadro("Oh no! Esta oscureciendo! Debes volver a casa cuanto antes. Escoje bien tu camino!","Continuar");
}
 if(estado == 3){
    image(fondos[2],0,0);
    boton("Ir por la cueva",40,300,30);
    boton("Seguir las montañas",170,290,150);
    boton("Subir el río",290,300,270);
}
 if(estado == 4){
    image(fondos[3],0,0);
    image(personaje[4],200,150,200,200); 
    cuadro("Decides aventurarte en la cueva.","Continuar");
}
 if(estado == 5){
    image(fondos[6],0,0);
    cuadro("Está muy oscuro, apenas se puede ver. Eh! Hay luz al fondo! Decides seguirla.", "Continuar");
}
 if(estado == 6){
    image(fondos[7],0,0);
    image(personaje[3],50,-20,300,300); 
    cuadro("Era un portal! Has entrado a otra dimensión! No encontraste el camino a casa", "Reintentar");
}
 if(estado == 7){
    image(fondos[4],0,0);
    image(personaje[4],200,150,200,200); 
    cuadro("Crees que seguir las montañas es lo mejor.", "Continuar");
}
if(estado == 8){
    image(fondos[8],0,0);
    image(personaje[2],0,20,300,300); 
    cuadro("Te has perdido y ya es de noche! Aquí no estaba tu casa.", "Reintentar");
}
if(estado == 9){
    image(fondos[5],0,0);
    image(personaje[0],-20,150,200,200); 
    cuadro("Crees que seguir el río por las montañas es la mejor opción.", "Continuar");
}
if(estado == 10){
    image(fondos[9],0,0);
    image(personaje[1],0,150,200,200); 
    cuadro("Así era! Has logrado llegar a casa justo antes de que oscureciera!", "Reiniciar");
}
  if(estado == 11){
   image(fondos[10],0,0);
   opciones("Jugar",80,50);
   opciones("Créditos",220,50);

 }
   if(estado == 12){
   image(fondos[11],0,0);
   opciones("Volver",250,300);
   text("Créditos 100% reales",60,50,290,500);
   creditos("Ilustración ________ El mismo Picasso", 100);
   creditos("Programación ____________ Anonimus", 130);
   creditos("Guión ____________No sé, uno famoso", 160);
   creditos("Dirección __________ Steven Spielberg", 190);
 }
}

void mousePressed(){ // Cambio entre estados a través de botones
  if ( estado == 0 ) {
    if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 1;
    }
  }
    else if ( estado == 1 ) {
    if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 2;
    }
  }
     else if ( estado == 2 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 3;
    }
  }    
     else if ( estado == 3 ) {
     if (mouseX>30 && mouseX<130 && mouseY>280 && mouseY<340){
     estado = 4;
     } else if (mouseX>150 && mouseX<250 && mouseY>280 && mouseY<360){
     estado = 7;
     } else if (mouseX>270 && mouseX<370 && mouseY>280 && mouseY<360){
     estado = 9;
    }      
  } 
     else if ( estado == 4 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 5;
    }
  }
     else if ( estado == 5 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 6;
    }
  }
     else if ( estado == 6 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 11;
    }
  }
     else if ( estado == 7 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 8;
    }
  }
     else if ( estado == 8 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 11;
    }
  }
     else if ( estado == 9 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 10;
    }
  }
     else if ( estado == 10 ) {
     if (mouseX>50 && mouseX<350 && mouseY>280 && mouseY<360){
     estado = 11;
    }    
  }
  else if ( estado == 11 ) {
     if (mouseX>80 && mouseX<180 && mouseY>50 && mouseY<110){
     estado = 0;
    }  else if ( estado == 11 ) {
     if (mouseX>220 && mouseX<320 && mouseY>50 && mouseY<110){
     estado = 12;
    }    
   }  
  }
     else if ( estado == 12 ) {
     if (mouseX>250 && mouseX<350 && mouseY>300 && mouseY<360){
     estado = 11;
    }    
  }
 println ("El estado es: "+estado);
}

  
void boton(String txt, int txtX, int txtY, int x){
   textAlign(LEFT);
   fill(130,110,250);
   rect(x,280,100,60);
   fill(255);
   textSize(12);
   text(txt, txtX, txtY,100,200);
  }
  
void opciones(String txt, int x, int y){
   textAlign(CENTER);
   fill(130,110,250);
   rect(x,y,100,60);
   fill(255);
   textSize(20);
   text(txt, x+2, y+15,100,200);
  }

void cuadro(String txt, String txt2){
   textAlign(LEFT);
   fill(130,110,250);
   rect(50,280,300,80);
   textSize(14);
   fill(255);
   text(txt,60,290,290,500);
   textSize(12);
   text(txt2+" >",270,350);
  }
  
void creditos(String txt, int Y){
   textAlign(LEFT);
   textSize(17);
   fill(255);
   text(txt,50,Y,320,500);
 }
