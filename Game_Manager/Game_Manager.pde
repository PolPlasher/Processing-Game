// Processing Game

Player player;

void setup() {
  size (800, 600);

  player = new Player(width / 2, height / 2);
}

void draw() {
  background(255);


  player.drawEntity();
  /*
  player.xPos = mouseX;
   player.yPos = mouseY;
   */
}

void keyPressed() {
  switch (key) {
  case 'w':
  case 'W':
    player.yPos -= 10;
    break;
  case 'a':
  case 'A':
    player.xPos -= 10;
    break;
  case 's':
  case 'S':
    player.yPos += 10;
    break;
  case 'd':
  case 'D':
    player.xPos += 10;
    break;
  }
}
