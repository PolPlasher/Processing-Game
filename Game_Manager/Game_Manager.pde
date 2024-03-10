// PROCESSING GAME BY POL LLEIDA RAMÍREZ & POL BLESA ALBIÑANA

Player player;  // Declare a Player
NPC chaser;  // Declare an NPC
Enemy enemy;  // Declare an enemy

int[] enemyX;
int[] enemyY;
int amount_enemy = 10;

void setup() {
  fullScreen();

  player = new Player(width / 2, height / 2);
  chaser = new NPC(width / 2 - 10, height / 2 - 10);
  enemy = new Enemy(0, height);

  player.posX = width / 2.0;
  player.posY = height / 2.0;

  enemyX = new int[amount_enemy];
  enemyY = new int[amount_enemy];
  for (int counter = 0; counter < amount_enemy; counter++) {
    enemyX[counter] = 0; // The enemies appear from the left of the screen
    enemyY[counter] = (int)random(height);
  }
}

void draw() {
  background(255);

  player.drawEntity(color(0, 255, 0));
  chaser.drawEntity(0);
  chaser.chase(player);

  for (int counter = 0; counter < amount_enemy; counter++) {
    enemy.drawEntity(color(255, 0, 0));
    ellipse(enemyX[counter], enemyY[counter], enemy.radius, enemy.radius);
  }
}

void mouseMoved() {
  player.posX = mouseX;
  player.posY = mouseY;
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
