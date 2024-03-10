// NPC class
class NPC extends Entity {

  float chaseVelocity;  // Velocity (0 - 1) to chase the target

  // Chase another entity
  void chase(Entity chasingTarget) {
    posX = (1 -   chaseVelocity) * posX + chaseVelocity * chasingTarget.posX;
    posY = (1 - chaseVelocity) * posY + chaseVelocity * chasingTarget.posY;
  }

  // NPC constructor
  NPC (int spawnX, int spawnY) {
    posX = spawnX;  // Spawn coordinate X
    posY = spawnY;  // Spawn coordinate Y
    
    chaseVelocity = 0.15;  // Initial velocity

    health = 100;  // Initial health
    radius = 15;  // Initial radius
  }
}
