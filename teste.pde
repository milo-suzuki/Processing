//Personagem
Personagem p1;
float posX, posY;

PVector vel;
PVector acel;

//Pulo

float yTemp;
int contadorPulo;
int puloCooldown;
boolean podePular;



void setup () {
  size(1280, 720);
  vel = new PVector (0, 0);
  acel = new PVector (0, 0);
  contadorPulo = 0;
  podePular = true;
  
  posX = width/2;
  posY = 620;
}

void draw() {
  background(255);
  p1 = new Personagem (posX, posY);
  p1.display();
  vel.add(acel);
  posY += vel.y;

  stroke(0);
  fill(0);
  rect(0, 670, 1280, 50);



  if (posY > 620) {
    acel.y = 0; 
    vel.y = 0; 
    posY = 620;
  }
  if (posY == 620 || contadorPulo < 2) {
  }
  if (contadorPulo >= 2) {
    if (millis() - puloCooldown <= 1000) {
      podePular = false;
    } else {
      contadorPulo = 0;
      podePular = true;
    }
  }
}

void keyTyped() {
  if (key=='w') {
    yTemp = posY;
    p1.pular();
  }
}
