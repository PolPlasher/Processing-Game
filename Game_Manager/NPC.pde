// NPC class
class NPC extends Entity {

  float alpha = 0.1;
  
  // Chase another entity
  void chase(Entity chasingTarget) {
    posX = (1 - alpha) * chasingTarget.posX + alpha * chasingTarget.posX;
    posY = 0.9 * chasingTarget.posY;
  }

  // NPC constructor
  NPC (int spawnX, int spawnY, Entity chasingTarget) {
    posX = spawnX;
    posY = spawnY;
    chase(chasingTarget);

    radius = 10;
  }
}
