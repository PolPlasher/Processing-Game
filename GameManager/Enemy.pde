// Enemy class

class Enemy extends Entity {

  int health;                  // Health of the Enemy
  float player_escape_speed;  // Velocity at wich escapes player
  float enemy_escape_speed;

  boolean wandering;  // Whether the enemy is in wandering state
  boolean hunting;   // Whether the enemy is in hunt state

  Entity collider;

  Enemy(int spawnX, int spawnY, boolean hunting) {
    this.posX = spawnX;       // Spawn coordinates X
    this.posY = spawnY;      // Spawn coordinates Y

    this.health = 50;                   // Initial health

    this.radius = 20;                  // Initial radius

    this.player_escape_speed = 200;      // Escape speed from the player
    this.enemy_escape_speed = 0.05;     // Escape speed from the other enemies (collider speed)

    collider = new Entity();
    collider.radius = 20;                   // Radius of the Circle Of Influence (collider radius)

    if (hunting) {
      hunting = true;
      wandering = false;
    } else {
      hunting = false;
      wandering = true;
    }
  }

  void update() {

    screenBoundaries(true);
    drawEntity(color(255, 0, 0), 255);

    collider.posX = this.posX;
    collider.posY = this.posY;

    if (circularCollision(this, player.COI))
      escapeFrom(player);

    for (int counter = 0; counter < amount_enemies; counter++) {
      if (circularCollision(this.collider, enemies[counter].collider))
        escapeFrom(enemies[counter]);
      screenBoundaries(true);
    }
  }

  void escapeFrom(Player player) {  // Function for escaping the player
    PVector enemy_to_player = new PVector(player.posX - this.posX, player.posY - this.posY);

    enemy_to_player.x = 1 / enemy_to_player.x;
    enemy_to_player.y = 1 / enemy_to_player.y;

    this.posX -= enemy_to_player.x * player_escape_speed;
    this.posY -= enemy_to_player.y * player_escape_speed;
  }

  void escapeFrom(Enemy enemy) {  // Function for escaping another enemy
    PVector enemy_to_enemy = new PVector(enemy.posX - this.posX, enemy.posY - this.posY);

    this.posX -= enemy_to_enemy.x * enemy_escape_speed;
    this.posY -= enemy_to_enemy.y * enemy_escape_speed;
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
