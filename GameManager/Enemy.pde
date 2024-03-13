// Enemy class

class Enemy extends Entity {

  int npcs_eliminated = 1;  // The amount of npcs the enemies have eliminated

  float player_escape_speed;  // Velocity at wich escapes player
  float enemy_collide_factor;  // Velocity at wich escapes player
  float hunt_speed;

  boolean wandering;  // Whether the enemy is in wandering state
  boolean hunting;   // Whether the enemy is in hunt state

  Entity collider;

  Enemy(int spawnX, int spawnY, boolean is_hunting) {

    disabled = false;

    this.posX = spawnX;       // Spawn coordinates X
    this.posY = spawnY;      // Spawn coordinates Y

    this.radius = 20;                  // Initial radius

    this.player_escape_speed = 200;     // Escape speed from the player
    this.enemy_collide_factor = 0.05;  // Collide factor with other enemies (escape speed for enemies)
    this.hunt_speed = 3;

    collider = new Entity();         // Initialize the enemy collider
    collider.radius = this.radius;  // Radius of the collider

    // States of the Enemy
    if (is_hunting) {
      this.hunting = true;
      this.wandering = false;
    } else {
      this.hunting = false;
      this.wandering = true;
    }
  }

  // ENEMY UPDATE
  void update() {

    if (disabled)  // If the entity is dead, don't run update (there is no way to destroy an object in processing)
      return;

    screenBoundaries(true);
    drawEntity(color(255, 0, 0), 255);

    collider.posX = this.posX;
    collider.posY = this.posY;

    if (circularCollision(this, player))
      disabled = true;

    if (this.hunting) {
      if (npcs_eliminated < amount_npcs + 1) {
        this.hunt(npcs[npcs.length - npcs_eliminated], hunt_speed);
        if (circularCollision(this, npcs[npcs.length - npcs_eliminated])) {
          npcs[npcs.length - npcs_eliminated].disabled = true;
          npcs_eliminated++;
        }
      } else {
        this.hunt(player, hunt_speed);
        if (circularCollision(this, player))
          player.disabled = true;
      }
    } else if (this.wandering) {
      if (circularCollision(this, player.COI))
        escapeFrom(player);
      // else wander();
    }

    for (int counter = 0; counter < amount_enemies; counter++) {

      if (circularCollision(this.collider, enemies[counter].collider))
        this.collideWith(enemies[counter]);
    }
  }

  void escapeFrom(Player player) {  // Function for escaping the player
    PVector enemy_to_player = new PVector(player.posX - this.posX, player.posY - this.posY);

    enemy_to_player.x = 1 / enemy_to_player.x;
    enemy_to_player.y = 1 / enemy_to_player.y;

    this.posX -= enemy_to_player.x * player_escape_speed;
    screenBoundaries(true);
    this.posY -= enemy_to_player.y * player_escape_speed;
    screenBoundaries(true);
  }

  void hunt(Entity entity, float hunt_speed) {
    PVector enemy_to_target = new PVector(entity.posX - this.posX, entity.posY - this.posY);
    enemy_to_target.normalize();

    this.posX += enemy_to_target.x * hunt_speed;
    this.posY += enemy_to_target.y * hunt_speed;
  }

  void collideWith(Enemy enemy) {  // Function for escaping another enemy
    PVector enemy_to_enemy = new PVector(enemy.posX - this.posX, enemy.posY - this.posY);

    this.posX -= enemy_to_enemy.x * enemy_collide_factor;
    this.posY -= enemy_to_enemy.y * enemy_collide_factor;
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
