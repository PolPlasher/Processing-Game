// Player class

class Player extends Entity {

  float speed;
  // Player constructor
  Player (int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.health = 100;  // Initial health
    this.speed = 15;    // Initial speed (keyboard only) 
    this.radius = 25;  // Initial radius
  }
}
