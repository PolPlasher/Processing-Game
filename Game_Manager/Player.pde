// Player class
class Player extends Entity {

  // Player constructor
  Player (int spawnX, int spawnY) {
    posX = spawnX;  // Spawn coordinate X
    posY = spawnY;  // Spawn coordinate Y

    health = 100;  // Initial health
    radius = 25;  // Initial radius
  }
}
