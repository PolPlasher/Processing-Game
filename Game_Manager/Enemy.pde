// Enemy class
class Enemy extends Entity {

  Enemy(int spawnX, int spawnY) {
    posX = spawnX;
    posY = spawnY;

    health = 50;
    radius = 20;
  }
}
