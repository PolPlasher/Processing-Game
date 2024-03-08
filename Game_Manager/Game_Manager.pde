// Processing Game

Player player;
NPC chaser;

void setup() {
  fullScreen();

  player = new Player(width / 2, height / 2);
  chaser = new NPC(width / 2 - 10, height / 2 - 10, player);
  
  player.posX = width / 2.0;
  player.posY = height / 2.0;
}

void draw() {
  background(255);

  player.drawEntity(color(0, 255, 0));
  chaser.drawEntity(0);

// PNJ1



}

void keyPressed() {
  switch (key) {
  case 'w':
  case 'W':
    player.posY -= 4;
    break;
  case 'a':
  case 'A':
    player.posX -= 4;
    break;
  case 's':
  case 'S':
    player.posY += 4;
    break;
  case 'd':
  case 'D':
    player.posX += 4;
    break;
  }
}
