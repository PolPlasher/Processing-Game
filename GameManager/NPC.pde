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
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.chase_velocity = 0.15;  // Initial velocity

    this.health = 100;  // Initial health
    this.radius = 15;  // Initial radius
  }
}
