// InputManager

// MOUSE INPUT
void mouseMoved() {
  if (!player.disabled) {
    player.posX = mouseX;
    player.posY = mouseY;
  }
}

// KEYBOARD INPUT
void keyPressed() {

  if (in_titlescreen) {
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

void numberInput(char input) {  // Function for entering input as numbers in the title screen

  if (input == '\n' && typing.length() == 0) {  // If no input is given
    in_titlescreen = false;
    amount_enemies = 10;  // The default enemy amount is 10
    initializeEntities();
  } else if (input == '\n') {
    in_titlescreen = false;
    amount_enemies = Integer.parseInt(typing);  //  The string introduced by the player
    initializeEntities();
  }

  if (input < '0' || input > '9' && input != '\n')  // If the character is out of the abecedary and is not '\n'
    return;

  typing = typing + input;
}
