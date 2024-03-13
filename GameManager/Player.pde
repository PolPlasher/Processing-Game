// Player class

class Player extends Entity {

  float speed;

  Entity COI = new Entity();  // Circle Of Influence of the player (circle area where the enemies escape)

  // Player constructor
  Player (int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.radius = 25;  // Initial radius

    this.speed = 15;  // Initial speed (keyboard only)
    this.COI.radius = 500;
  }

  // PLAYER UPDATE
  void update() {

    if (disabled)
      return;
    screenBoundaries(true);

    drawEntity(color(0, 255, 0), 255);

    COI.posX = this.posX;
    COI.posY = this.posY;
  }
}
