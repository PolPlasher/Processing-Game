// GameManager

Player player;  // Declare a Player entity

// Declare an array of NPC entities
NPC[] npcs;
int amount_npcs = 2;

Enemy[] enemies;      // Declare an Enemy object
int amount_enemies;  // Initialize amount of enemies

int npcs_eliminated = 1;  // The amount of npcs the enemies have eliminated

// SETUP
void setup() {

  fullScreen();
  noCursor();

  titleScreen();

  initializeEntities();
}

// DRAW
void draw() {

  if (in_titlescreen) {
    titleScreen();
    return;
  } else if (player.disabled) {
    gameOver();
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

void initializeEntities() {

  // Player initialization
  player = new Player(width / 2, height / 2);  // Spawn the player in the middle of the screen

  // NPCs initialization
  npcs = new NPC[amount_npcs];
  for (int counter = 0; counter < amount_npcs; counter++) {
    npcs[counter] = new NPC((int)random(width / 2, width - 300), (int)random(300, height - 300), counter);
  }

  // Enemies initialization
  enemies = new Enemy[amount_enemies];
  for (int counter = 0; counter < amount_enemies; counter++) {

    boolean hunting;
    if (counter % 2 == 0) hunting = true;
    else hunting = false;

    enemies[counter] = new Enemy(0, (int)random(height), hunting);
  }
}
