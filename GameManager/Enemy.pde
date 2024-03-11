// Enemy class

class Enemy extends Entity {

  float escape_speed;

  Enemy(int spawnX, int spawnY) {
    this.posX = spawnX;       // Spawn coordinates X
    this.posY = spawnY;      // Spawn coordinates Y

    this.health = 50;         // Initial health
    this.escape_speed = 50;  // Initial escape speed (the closest it is to 0, the quicker the enemy will escape)
    this.radius = 20;       // Initial radius
  }

  void escapeFrom(Entity escaping_entity) {

    if (circularCollision(this, escaping_entity)) {
      PVector enemy_to_player = new PVector(escaping_entity.posX - this.posX, escaping_entity.posY - this.posY);
      this.posX -= enemy_to_player.x / escape_speed;
      this.posY -= enemy_to_player.y / escape_speed;
    }
  }


  void update() {
    for (int counter = 0; counter < amount_enemies; counter++) {
      enemies[counter].drawEntity(color(255, 0, 0));
      if (counter % 2 == 0) enemies[counter].escapeFrom(player);
    }
  }
}
