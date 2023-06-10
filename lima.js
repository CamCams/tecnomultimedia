class Lima {
    constructor() {
      imageMode(CENTER);
      this.limin = loadImage("data/ovalo2.png");
      this.tamlima = random(600, 1000);
      this.posX = random(0, 600);
      this.posY = 800;
    }
  
    dibujar() {
        push();
        tint(255,200);
        image(this.limin, this.posX, this.posY, this.tamlima, this.tamlima);
        pop();
    }
  }
  
  