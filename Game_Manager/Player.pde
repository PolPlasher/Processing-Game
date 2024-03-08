// Player class
class Player extends Entity {

  // Player constructor
  Player (int spawnX, int spawnY) {
    posX = spawnX;
    posY = spawnY;

    health = 100;
    radius = 25;
  }
}
