// Player class

class Player extends Entity {

  float speed;
  int health;  // Health of the Player

  Entity circle_of_influence = new Entity();

  // Player constructor
  Player (int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.health = 100;  // Initial health
    this.radius = 25;  // Initial radius

    this.speed = 15;  // Initial speed (keyboard only)
    this.circle_of_influence.radius = 170;
  }

  void update() {
    drawEntity(color(0, 255, 0), 255);
    circle_of_influence.posX = this.posX;
    circle_of_influence.posY = this.posY;
    circle_of_influence.drawEntity(color (0, 0, 0), 50);
  }
}
