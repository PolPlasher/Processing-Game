// Enemy class

class Enemy extends Entity {

  Enemy(int spawnX, int spawnY) {
    posX = spawnX;  // Spawn coordinates X
    posY = spawnY;  // Spawn coordinates Y

    health = 50;  // Initial health
    radius = 20;  // Initial radius
  }
}
