// GameManager

Player player;  // Declare a Player object

NPC npc1;  // Declare the first NPC object
NPC npc2;  // Declare the second NPC object

Enemy[] enemies;  // Declare an Enemy object
int amount_enemies = 10;  // Initialize amount of enemies

int time;

void setup() {

  fullScreen();
  noCursor();

  // Entities initialization
  player = new Player(width / 2, height / 2);  // Spawn the player in the middle of the screen

  npc1 = new NPC(width / 2 - 10, height / 2 - 10);
  npc2 = new NPC(width / 2 - 20, height / 2 - 20);

  enemies = new Enemy[amount_enemies];
  for (int counter = 0; counter < amount_enemies; counter++) {
    enemies[counter] = new Enemy(500, (int)random(height), true);
  }
}

void draw() {
  time = millis();
  background(255);

  // PLAYER UPDATE
  player.update();

  // NPCs UPDATE
  npc1.update();
  npc2.update();

  // ENEMIES UPDATE
  for (int counter = 0; counter < amount_enemies; counter++) {
    enemies[counter].update();
  }
}
