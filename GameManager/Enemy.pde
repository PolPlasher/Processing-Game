// Enemy class

class Enemy extends Entity {

  float escape_speed;         // Speed to scape the player
  int health;                // Health of the Enemy

  Enemy(int spawnX, int spawnY) {
    this.posX = spawnX;       // Spawn coordinates X
    this.posY = spawnY;      // Spawn coordinates Y

    this.health = 50;         // Initial health
    this.escape_speed = 9;   // Initial escape speed (the closest it is to 0, the quicker the enemy will escape)
    this.radius = 20;       // Initial radius
  }

  void update() {
  
    screenBoundaries();
    for (int counter = 0; counter < amount_enemies; counter++) {
      enemies[counter].drawEntity(color(255, 0, 0), 255);
      enemies[counter].escapeFrom(player);
      
      if (counter % 2 == 0) {  // Wandering enemies
        int wandering_radius = (int)random(15);  // Circle where the next wandering step is going to be
        enemies[counter].wander(wandering_radius);
      } else {  // Hunter enemies
        // Hunt npc2
      }
    }
  }

  void escapeFrom(Entity escaping_entity) {

    if (circularCollision(this, player.circle_of_influence)) {  // Colliding with the player's circle of influence
      PVector enemy_to_player = new PVector(escaping_entity.posX - this.posX, escaping_entity.posY - this.posY);
      enemy_to_player.normalize();
      this.posX -= enemy_to_player.x * escape_speed;
      this.posY -= enemy_to_player.y * escape_speed;
    }
  }

  //  WIP
  void wander(int wandering_radius) {
    if (time % 100 == 0) {
      int path_length = 0;
      while (path_length < wandering_radius) {
        this.posX += 0.1;
        this.posY += 0.1;
        path_length++;
      }
    }
  }
}
