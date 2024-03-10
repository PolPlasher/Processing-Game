// InputManager

float player_speed = 15;

// MOUSE INPUT
void mouseMoved() {
  player.posX = mouseX;
  player.posY = mouseY;
}

// KEYBOARD INPUT
void keyPressed() {
  switch (key) {
  case 'w':
  case 'W':
    player.posY -= player_speed;
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
