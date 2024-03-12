// Player class

class Player extends Entity {

  float speed;
  int health;  // Health of the Player

  Entity COI = new Entity();

  // Player constructor
  Player (int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.health = 100;  // Initial health
    this.radius = 25;  // Initial radius

    this.speed = 15;  // Initial speed (keyboard only)
    this.COI.radius = 400;
  }

  void update() {
    screenBoundaries(true);
    
    drawEntity(color(0, 255, 0), 255);
    
    COI.posX = this.posX;
    COI.posY = this.posY;
    COI.drawEntity(color (0, 0, 0), 50);
  }
}
