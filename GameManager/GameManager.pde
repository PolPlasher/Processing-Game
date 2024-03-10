// GameManager

Player player;  // Declare a Player object

NPC npc1;  // Declare the first NPC object
NPC npc2;  // Declare the second NPC object

Enemy[] enemies;  // Declare an Enemy object
int amount_enemies = 10;  // Initialize amount of enemies


void setup() {

  fullScreen();

  // Entities initialization
  player = new Player(width / 2, height / 2);  // Spawn the player in the middle of the screen

  npc1 = new NPC(width / 2 - 10, height / 2 - 10);
  npc2 = new NPC(width / 2 - 20, height / 2 - 20);

  enemies = new Enemy[amount_enemies];
  for (int counter = 0; counter < amount_enemies; counter++) {
    enemies[counter] = new Enemy(0, (int)random(height));
  }
}

void draw() {

  background(255);

  player.drawEntity(color(0, 255, 0));

  npc1.drawEntity(color (0, 0, 255));
  npc2.drawEntity(color (0, 0, 255));

  for (int counter = 0; counter < amount_enemies; counter++) {
    enemies[counter].drawEntity(color(255, 0, 0));
  }
  npc1.chase(player);
  npc2.chase(npc1);
}
