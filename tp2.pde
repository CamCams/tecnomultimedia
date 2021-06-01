PImage minecraft, minecraft2, logo, creeper;
float logoY, N, G, tam1, tam2, transparencia,transparencia2,transparencia3,red,green,blue;
PFont fuente1, fuente2, fuente3,fuente4;
String uno,dos,tres,cuatro,cinco,seis,siete,ocho,nueve;

void setup(){
  size (800,452);
  
  //Textos creditos
  uno= "Art Usher Brandon Franklin Brandon Pearce Cole Phillips Cory Scheviak Henrik Kniberg Jared Greiner Lauren E Careccia Michael Stagnitta Nir Vaknin Pradnesh Patil Steve Enos Tod Pang";
  dos= "Christopher Ostlund Jason Cahill Jason Major Lawrence M. Sanchez II Michael J. Ott Nathan Adams";
  tres= "Gary McLaughlin James S Yarrow Mason McCuskey Matt Hawley Mikael Hedberg Andrew Maher Michael Scott";
  cuatro= "Alex Green Alexander Ostman Alexander Sandor Alexander Torstling Bartosz Bok Billy Sjoberg Bjarni Gudmundsson Brian Threvathan Chad George Cody Centers Craig Steyn David Dalstrom Erik Broes Ethan A Hall Felix Jones Georgii Gavrichev Henning";
  cinco= "Bill Carlson Bryan Yeo Chad C Meyers Dan Posluns Fanny P Vadillo Herrera Haronid Moncivais Jamie Fristrom Jeff McKune John Copic John Seghers Jonas Keating Mark D. Andersen Mark Grinols Maxime Bouchez Michael D McGrath Nickolas Graczyk Shane Pierce Steve Robinson";
  seis= "Andrea Sanchez Sepulveda Chi Wong Dylan Sunkel (Collabera) Erin Caswell Jacob Lee Jan Cariaga Kirk Barnett Linus Chan Mark Hershberger Michael Ray Neumann Peter Sheff Sarah Martino Jei G Ling Lilei Yu Richard Worley";
  siete= "Allison Matthews Anita Sujarit David Nisshagen Dennis Ries Fredrik Telenius Jessica Zahn Kayla Kinnunen Mike Ammerlaan Roger Carpenter Sara Jansson Bach";
  ocho="Adrian Ostergard Alen Voljevica Andrea Lam Anna Lundgren Ann-Kristin Adwent Antonina Khazova Best Liang Carrie Doring Chris Messena Damian"; 
  nueve= "David Siegel Dejan Dimic Dev Hazarika Diana Lind DJ Stiner Dom Arcamone Elizabeth Batson Emily Carlson Gama Aguilar-Gamez Hai Shi Halishia Chugani Ingela Garneij Jewel Chukwufumn Ifeguni Kara Kono Kasia Swica Katie Ellison Kaya Hatcher Kelly Henckel Kristina M. Ashment Loudon St Hill Madeline E Psenka";

  //Fuentes
  fuente1= createFont("Minecraft.ttf",18);
  fuente2= createFont("Minecraft.ttf",13);
  fuente3= createFont("Minecraft.ttf",10);
  fuente4= createFont("Minecraft.ttf",40);

  //Imágenes
  imageMode(CENTER);
  minecraft = loadImage("tierra.png");
  minecraft2 = loadImage("cielito.PNG");
  logo = loadImage("logo.png");
  creeper = loadImage("creeper.png");
  
  //Variables
  logoY = 400;
  N= 1;
  tam1=420;
  tam2=220;
  transparencia=0;
  transparencia2=0;
  transparencia3=0;
}

void draw(){
  
  //Fondo 1
  background(minecraft2);
  tint(255,transparencia);
  image(logo, 400,logoY, tam1, tam2);
  
  //Variables 2
  logoY-= 0.7;
  tam1+=0.7;
  tam2+=0.5;
  N+=1;
  G=50*sin(0.1*N)+80;
  red= random(255);
  green= random(255);
  blue= random(255);
  
  //Logo
  if ((logoY < 330) && (logoY > 250)){
    transparencia+=3;
  }
  if ((logoY < 250) || (tam2 > 400)){
    transparencia-=3;
  }
  
  //Fondo 2
  if(logoY < 120){
  background(minecraft);
  
  textFont(fuente3);
  fill(255,G);
  text("CLICK para reiniciar", 690, 20); //Texto esquina
  fill(255,255);
  }
  
  //?
  if((N>450)&&(N<4000)){
  textFont(fuente1);
  text("?",100,420);
  }
  
  //Creeper
  if((N>450)&&(N<4000)&&(mouseX<120)&&(mouseY>400)&&(mouseX>100)){
    transparencia=255;
    transparencia+=3;
    image(creeper,100,450,200,200);
  }
  
  //Créditos
  if((N > 450) && (N < 650)){
  transparencia=255;
  textFont(fuente1);
  fill(255, transparencia);
  text("Head of Minecraft",150,100);
  text("Chief Executive Officer",150, 200);
  text("Game Directors", 150, 300);
  text("Lead Game Designers", 460, 100);
  text("Creative Director", 460, 200);
  text("Principal Design Director", 460, 300);
  
  textFont(fuente2);
  text("Helen Chiang",150, 130);
  text("Jonas Martensson", 150, 230);
  text("Agnes Larsson", 150,330);
  text("Rob Poerschke",460,130);
  text("Robin V Vincent",460,150);
  text("Jesse Merriam",460, 230);
  text("Torfi Frans Olafsson",460,250);
  text("Craig Leigh",460, 330);
  } 
  
  if((N > 700) && (N < 900)){
  textFont(fuente1);
  text("Game Designers",150,100);
  text("Narrative Designers",460,100);
  text("Chief Technology Officers", 460,200);
  text("Director of Franchise Quality", 460,300);
  
  textFont(fuente2);
  text(uno,150,130,130,500);
  text("Max Herngren", 460,130);
  text("Michael W Weilbacher", 460,230);
  text("Matthew Ng",460,330);
  }
  
  if((N > 950) && (N < 1150)){
  textFont(fuente1);
  text("Technical Director",150,100);
  text("Lead Game Developers",150,250);
  text("Game Developers",460,100);
  
  textFont(fuente2);
  text(dos,150,130,130,500);
  text(tres,150,280,130,500);
  text(cuatro,460,130,130,500);
  }
  
  if((N > 1200) && (N < 1400)){
  textFont(fuente1);
  text("Lead UI Developers",150,100);
  text("UI Developers",150,200);
  text("Laucher Developer",460,100);
  
  textFont(fuente2);
  text("Oleg Kozitsyn",150,130);
  text("Paulo Ragonha",150,150);
  text("Albin Odervall Anna Paarni Danila Dergachev Emil Hedemalm Eric Grimsborn Fernando Vía Canel Marlon Huber-Smith Oskar Pedersen Richard Pihlcrantz", 150,230,130,500);
  text("Linus Cumselius Lucas Morales Marc Neander Márcio Oliveira Martin Hesselborn Michael Malmqvist Petr Mrázek Sandra Bornemark Piotr Kundu Rasmus Kallqvist",460,130,130,500);
 }
 
  if((N > 1450) && (N < 1650)){
  textFont(fuente1);
  text("Lead Architects",150,100);
  text("Architects",150, 250);
  text("Bedrock Software Developers",460,100);
  
  textFont(fuente2);
  text("Greg Snook Henry Golding Peter M Wiest",150,130,130,500);
  text("Dom Humphrey Mike Frost Michael Seydl Robert Sanchez",150,280,130,500);
  text(cinco,460,130,150,500);
  }
  
  if((N > 1700) && (N < 1900)){
  textFont(fuente1);
  text("Lead Sound Designer",150,100);
  text("Sound Designers",150,200);
  text("Music composed by",150,330);
  text("Art Directors",460,100);
  text("Art Leads",460,200);
  
  textFont(fuente2);
  text("Samuel Aberg",150,130);
  text("Daniel Rosenfeld Kevin Martinez Rostislav Trifonov",150,230,130,500);
  text("Lena Raine",150,360);
  text("Andy Zibits",460,130);
  text("Daniel Bjorkefors Joel Garvin Michael Apolis Ryan Sand Telemachus Stavropoulos",460,230,130,500);
  }
  
  if((N > 1950) && (N < 2150)){
  textFont(fuente1);
  text("Artist",150,100);
  text("Lead Technical Artist",460,100);
  text("Technical Artist",460,200);
  text("Graphic Artists",460,300);
  
  textFont(fuente2);
  text(seis,150,130,140,500);
  text("Lisa Hazen",460,130);
  text("Dylan Piepenbrok",460,230);
  text("Jasper Boerstra",460,330);
  text("Mattis Grahm",460,350);
  }
  
  if((N > 2200) && (N < 2400)){
  textFont(fuente1);
  text("Head of Platform Engineering",150,100);
  text("Head of Buddiness Engineering",150,200);
  text("Head of Creator Marketplace",150,300);
  text("Executive Producers",460,100);
 
  textFont(fuente2);
  text("John Thornton",150,130);
  text("Ryan B Cooper",150,230);
  text("Aaron J Buckley",150,330);
  text(siete,460,130,130,500);
  }
  
  if((N > 2450) && (N < 2650)){
  textFont(fuente1);
  text("Production Manager",150,100);
  text("Producers",150,200);
  
  textFont(fuente2);
  text("Klas Hammarstrom",150,130);
  text("Michael McManus",150,150);
  text(ocho,150,230,130,500);
  text(nueve,460,90,130,500);
  }
  
  if((N > 2700) && (N < 2900)){
  textFont(fuente1);
  text("Director of Player Support",150,100);
  text("Community Managers",150,200);
  text("Customer Program Manager",460,100);
  text("Customer Support Lead",460,200);
  text("Customer Support",460,300);
  
  textFont(fuente2);
  text("Anne Quaranta",150,130);
  text("Cameron Thomas Jay Wells Joel Sasaki Kristina Horner Lindsey Schaal Matt Gartzke Trella Rath",150,230,130,500);
  text("Jon-Eric L Swigart",460,130);
  text("Jen Pedersen",460,230);
  text("Kyle McMurtry",460,330);
  }
  
  //Final
  
  if(N > 2950) {
  transparencia2+=2;
  fill(0,transparencia2);
  rect(0,0,800,452);
  }
  if(N > 3200){
  textFont(fuente1);
  fill(255);
  text("'Twenty years from now you will be more disappointed by the things that you didn't do than by the ones you did do. So throw off the bowlines. Sail away from the safe harbor. Catch the trade winds in your sails. Explore. Dream. Discover.'",120,150,600,300);
  textFont(fuente2);
  text("- Unknown",120,300);
  }
  if(N > 3900){
  transparencia3+=2;
  fill(0,transparencia3);
  rect(0,0,800,452);
  }
  if((N > 4150)&&(N < 100000)){
  textFont(fuente4);
  fill(red,green,blue);
  text("The End",330,226);
  }
  if((N > 4380)&&(N < 100000)){
  textFont(fuente3);
  fill(255,G);
  text("CLICK para reiniciar", 690, 20); //Texto esquina
  fill(255,255);
  }
  
  //Algo
  if((N > 4900)&&(N<5200)){
    textFont(fuente2);
    text("Eh, no vas a reiniciar?",340,270);
  }
  if((N>5400)&&(N<5550)){
    textFont(fuente2);
    text("Deberias",380,270);
  }
  if((N>5700)&&(N<6100)){
    textFont(fuente2);
    text("Digo, no hay mucho mas que hacer por aca",270,270);
  }
    if((N>6500)&&(N<7000)){
    textFont(fuente2);
    text(". . .",400,270);
  }
    if((N>7200)&&(N<7350)){
    textFont(fuente2);
    text("Es solo hacer click",350,270);
  }
    if((N>7400)&&(N<7500)){
    textFont(fuente2);
    text("No?",400,270);
  }
    if((N>7800)&&(N<8000)){
    textFont(fuente2);
    text("En verdad no hay nada mas",320,270);
  }
     if((N>8200)&&(N<8500)){
    textFont(fuente2);
    text("Podes fijarte en el codigo si queres",300,270);
  }
    if((N>8900)&&(N<9050)){
    textFont(fuente2);
    text(". . .Que frio, no?",360,270);
  }
    if((N>9300)&&(N<9450)){
    textFont(fuente2);
    text("Bueno, creo que lo hare yo",330,270);
  }
    if((N>9500)&&(N<9650)){
    textFont(fuente2);
    text("Me estoy aburriendo de esta pantalla",300,270);
  }
    if((N>9800)&&(N<9950)){
    textFont(fuente2);
    text("Ultima oportunidad",350,270);
  }
    if((N>10200)&&(N<10400)){
    textFont(fuente2);
    text(". . .",400,270);
  }
    if((N>10500)&&(N<10600)){
    textFont(fuente2);
    text("Se intento",380,270);
  }
    if((N>10700)&&(N<10850)){
    textFont(fuente2);
    text("Ahi va",395,270);
  }
  if(N>10950){
  logoY = 400;
  N= 1;
  tam1=420;
  tam2=220;
  transparencia=0;
  transparencia2=0;
  transparencia3=0;
  }

  println("Mouse X es: "+mouseX);
  println("Mouse Y es: "+mouseY);
  println("N: "+N);
}

//RESET
void mouseClicked(){
  logoY = 400;
  N= 1;
  tam1=420;
  tam2=220;
  transparencia=0;
  transparencia2=0;
  transparencia3=0;
}
