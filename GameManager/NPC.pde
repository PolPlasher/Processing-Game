// NPC class

class NPC extends Entity {

  float chase_velocity;  // Velocity (0 - 1) to chase the target

  // Chase another entity
  void chase(Entity chasingTarget) {
    posX = (1 -   chase_velocity) * posX + chase_velocity * chasingTarget.posX;
    posY = (1 - chase_velocity) * posY + chase_velocity * chasingTarget.posY;
  }

  // NPC constructor
  NPC (int spawnX, int spawnY) {
    posX = spawnX;  // Spawn coordinate X
    posY = spawnY;  // Spawn coordinate Y
    
    chase_velocity = 0.15;  // Initial velocity

    health = 100;  // Initial health
    radius = 15;  // Initial radius
  }
}
