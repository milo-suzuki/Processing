class Personagem {
  int tamanho = 50; //hola 
  PVector pos;

  Personagem(float x_, float y_) {
    pos = new PVector (x_, y_);
  }


  void  display() {
    stroke(250, 20, 20);
    fill(250, 20, 20);
    if (!podePular && posY == 620) {
      ellipseMode(CORNER);
      ellipse(posX, posY, tamanho, tamanho);
    } else {
      rect(posX, posY, tamanho, tamanho);
    }
  }

  void pular() { 
    if (contadorPulo < 2) {
      if (contadorPulo == 0) {
        vel.y = -60;
      } else if (contadorPulo == 1) {
        puloCooldown = millis();
        vel.y = -45;
      }
      acel.y = 4;
      contadorPulo++;
    }
  }
}
