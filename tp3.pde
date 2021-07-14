/* LINK AL VIDEO
https://youtu.be/3kYafWZwjxQ
*/

float N = 1;
float y1,y2,y3,s,C,tam,b;
boolean click=true;

void setup(){
  size(600,600);
  
  y1=120;
  y2=300;
  y3=480;
  
  b=0.6;
}
void draw(){
  
  background(0);
  N++;
  
 s= map(mouseX,0,600,0,1.8);
 C= map(mouseX,0,600,0,255);

  
  
  if(!click){
  tam=40*sin(0.05*N+60)+80;
  } else {tam=60;}

  
  println(tam); 



    //1
strokeWeight(s);

  for(int i = 4; i<184; i+=6){
    if(s>=b){
    stroke(0,0,C);
    line(0,i,600,i);
    }else{noStroke();}
    }
  for(int i = 2; i<184; i+=6){
     if(s>=b){
    stroke(0,C,0);
    line(0,i,600,i);
    }else{noStroke();}
    }
  noStroke();
  fill(#E5CFAB);
  ellipse(130,y1,tam,tam);
  
  for(int i = 0; i<=185; i+=6){
     if(s>=b){
    stroke(C,0,0);
    line(0,i,600,i);
    }else{noStroke();}
  }
  
  
  
  //2
  
  for(int i = 188; i<400; i+=6){
    if(s>=b){
    stroke(0,C,0);
    line(0,i,600,i);
    }else{noStroke();}
  }
  for(int i = 186; i<400; i+=6){
    if(s>=b){
    stroke(C,0,0);
    line(0,i,600,i);
    }else{noStroke();}
  }
  noStroke();
  fill(#E5CFAB);
  ellipse(300,y2,tam,tam);
  
  for(int i = 184; i<400; i+=6){
    if(s>=b){
    stroke(0,0,C);
    line(0,i,600,i);
    }else{noStroke();}
  }
  
  
  
  //3
  
  for(int i = 400; i<600; i+=6){
    if(s>=b){
    stroke(0,0,C);
    line(0,i,600,i);
    }else{noStroke();}
  }
   for(int i = 402; i<600; i+=6){
     if(s>=b){
    stroke(C,0,0);
    line(0,i,600,i);
    }else{noStroke();}
  }
  noStroke();
  fill(#E5CFAB);
  ellipse(480,y3,tam,tam);
  
  for(int i = 404; i<600; i+=6){
    if(s>=b){
    stroke(0,C,0);
    line(0,i,600,i);
    }else{noStroke();}
  }
  
  
  strokeWeight(1);
  stroke(255);
  textAlign(CENTER);
  textSize(15);
  text("Mouse",300,560);
  textSize(10);
  text("Sin ilusión",70,560);
  text("Ilusión",530,560);
  line(50,570,550,570);
  line(50,570,55,565);
  line(50,570,55,575);
  line(550,570,545,565);
  line(550,570,545,575);
}

void mousePressed(){
  if(click){
  click = !click;
  } 
  else if (!click){
    click= true;
}
}
