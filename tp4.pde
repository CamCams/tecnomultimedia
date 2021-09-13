// VIDEO DE PRESENTACIÓN
// https://www.youtube.com/watch?v=cnXD33p9Euc&ab_channel=CamiMachado

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
  fill(130,110,250);
  rect(50,280,300,80);
  fill(255);
  textSize(14);
  text("Ah.. El frio, la nieve, las montañas.. sientes que nada puede molestarte.",60,290,290,500);
  textSize(12);
  text("Continuar >",270,350);
}
 if(estado == 1){
    image(fondos[0],0,0);
    image(personaje[4],-50,0); 
    fill(130,110,250);
    rect(50,280,300,80);
    fill(255);
    textSize(14);
    text("Nunca habías estado tan tranquilo.",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
 } 
 if(estado == 2){
    image(fondos[1],0,0);
    image(personaje[2],-50,0); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Oh no! Esta oscureciendo! Debes volver a casa cuanto antes. Escoje bien tu camino!",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
}
 if(estado == 3){
    image(fondos[2],0,0);
    opcion(30,280);
    opcion(150,280);
    opcion(270,280);
    fill(255);
    textSize(12);
    text("Ir por la cueva",40,310);
    text("Seguir las montañas",170,290,100,200);
    text("Subir el río",290,300,100,200);
}
 if(estado == 4){
    image(fondos[3],0,0);
    image(personaje[4],200,150,200,200); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Decides aventurarte en la cueva.",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
}
 if(estado == 5){
    image(fondos[6],0,0);
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Está muy oscuro, apenas se puede ver. Eh! Hay luz al fondo! Decides seguirla.",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
}
 if(estado == 6){
    image(fondos[7],0,0);
    image(personaje[3],50,-20,300,300); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Era un portal! Has entrado a otra dimensión! No encontraste el camino a casa",60,290,290,500);
    textSize(12);
    text("Reintentar >",270,350);
}
 if(estado == 7){
    image(fondos[4],0,0);
    image(personaje[4],200,150,200,200); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Crees que seguir las montañas es lo mejor.",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
}
if(estado == 8){
    image(fondos[8],0,0);
    image(personaje[2],0,20,300,300); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Te has perdido y ya es de noche! Aquí no estaba tu casa.",60,290,290,500);
    textSize(12);
    text("Reintentar >",270,350);
}
if(estado == 9){
    image(fondos[5],0,0);
    image(personaje[0],-20,150,200,200); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Crees que seguir el río por las montañas es la mejor opción.",60,290,290,500);
    textSize(12);
    text("Continuar >",270,350);
}
if(estado == 10){
    image(fondos[9],0,0);
    image(personaje[1],0,150,200,200); 
    fill(130,110,250);
    rect(50,280,300,80); 
    fill(255);
    textSize(14);
    text("Así era! Has logrado llegar a casa justo antes de que oscureciera!",60,290,290,500);
    textSize(12);
    text("Reiniciar >",270,350);
}
  if(estado == 11){
   image(fondos[10],0,0);
   opcion(80,50);
   opcion(220,50);
   fill(255);
   textSize(24);
   text("Jugar",100,65,290,500);
   textSize(20);
   text("Créditos",232,68,290,500);
 }
   if(estado == 12){
   image(fondos[11],0,0);
   opcion(250,300);
   fill(255);
   textSize(24);
   text("Volver",265,315,290,500);
   text("Créditos 100% reales",82,50,290,500);
   textSize(17);
   text("Ilustración ________ El mismo Picasso",50,100,320,500);
   text("Programación ____________ Anonimus",50,130,320,500);
   text("Guión ____________No sé, uno famoso",50,160,320,500);
   text("Dirección __________ Steven Spielberg",50,190,320,500);
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

void opcion(int x, int y){
   fill(130,110,250);
   rect(x,y,100,60);
  }
  
