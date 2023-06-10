let limon;
let limas = [];
let mostrarLimon = false;
let mostrarLima = false;
let generarLimaTimeout;
let contadorLimas = 0;

function setup() {
  limon = new Limon();
  createCanvas(600, 800);
  generarLima();
}

function draw() {
  background(220);

  if (mostrarLimon) {
    limon.dibujar();
  }

  if (mostrarLima) {
    for (let i = 0; i < limas.length; i++) {
      limas[i].dibujar();
    }
  }
}

function generarLima() {
  if (mouseX >= 400 && mouseY >= 400) {
    if (limas.length >= 3) {
      limas.shift(); // Eliminar la primera lima del arreglo
    }
    let nuevaLima = new Lima(); // Crea una nueva instancia de Lima
    limas.push(nuevaLima); // Agrega la nueva instancia al arreglo de limas
  }

  generarLimaTimeout = setTimeout(generarLima, 1000); // Generar una lima cada 1 segundo
}

function mouseMoved() {
  if (mouseX >= 400) {
    mostrarLimon = true;
    print("hola");
  } else {
    mostrarLimon = false;
  }

  if (mouseY >= 400) {
    mostrarLima = true;
  } else {
    mostrarLima = false;
  }
}

