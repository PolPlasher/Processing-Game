// GameManager

Player player;  // Declare a Player object

  // Declare the second NPC object
NPC[] npcs;
int amount_npcs = 2;

Enemy[] enemies;  // Declare an Enemy object
int amount_enemies = 10;  // Initialize amount of enemies

int time;

boolean in_menu = true;

void setup() {

  fullScreen();
  noCursor();

  // Player initialization
  player = new Player(width / 2, height / 2);  // Spawn the player in the middle of the screen

  // NPCs initialization
  npcs = new NPC[amount_npcs];
  for (int counter = 0; counter < amount_npcs; counter++) {
    npcs[counter] = new NPC(width / 2, height / 2, counter);
  }

  // Enemies initialization
  enemies = new Enemy[amount_enemies];
  for (int counter = 0; counter < amount_enemies; counter++) {

    boolean hunting;
    if (counter % 2 == 0) hunting = true;
    else hunting = false;

    enemies[counter] = new Enemy(500, (int)random(height), hunting);
  }
}

void draw() {
  
  time = millis();
  
  if (in_menu) {
    titleScreen();
    return;
}
  
  background(255);
  


  // PLAYER UPDATE
  player.update();

  // NPCs UPDATE
  for (int counter = 0; counter < amount_npcs; counter++) {
   npcs[counter].update();
  }

  // ENEMIES UPDATE
  for (int counter = 0; counter < amount_enemies; counter++) {
    enemies[counter].update();
  }
}
