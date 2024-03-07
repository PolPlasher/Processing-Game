// NPC class
class NPC extends Entity {

  void chase(Entity chasingTarget) {
    posX = 0.9 * chasingTarget.posX;
    posY = 0.9 * chasingTarget.posY;
  }

  NPC (int spawnX, int spawnY, Entity chasingTarget) {
    posX = spawnX;
    posY = spawnY;
    chase(chasingTarget);

    radius = 10;
  }
}
