// InputManager

// MOUSE INPUT
void mouseMoved() {
  player.posX = mouseX;
  player.posY = mouseY;
}

// KEYBOARD INPUT
void keyPressed() {
  
  if (in_menu) {
    numberInput(key);
    return;
  }
  
  switch (key) {
  case 'w':
  case 'W':
    player.posY -= player.speed;
    break;
  case 'a':
  case 'A':
    player.posX -= player.speed;
    break;
  case 's':
  case 'S':
    player.posY += player.speed;
    break;
  case 'd':
  case 'D':
    player.posX += player.speed;
    break;
  }
}
