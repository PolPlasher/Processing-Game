// NPC class

class NPC extends Entity {

  int id;  // ID to identify from the other NPCs on the npcs array

  float chase_speed;  // Velocity (0 - 1) to chase the target
  float npc_escape_speed;

  boolean idle;

  Entity collider;  // Collider

  // NPC constructor
  NPC (int spawnX, int spawnY, int id) {
    
    this.disabled = false;
    
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.id = id;  // Sets the id to the argument given value

    this.chase_speed = 0.1;  // Initial velocity

    this.radius = 15;  // Initial radius
    
    this.npc_escape_speed = 10;

    this.collider = new Entity();
  }

  // NPC UPDATE
  void update() {

    if (disabled)
      return;

    drawEntity(color(0, 0, 255), 255);

    if (idle) {
      // idle
    }
    if (id == 0)
      this.chase(player, chase_speed);
    else
      this.chase(npcs[this.id - 1], chase_speed);

    for (int counter = 0; counter < amount_enemies; counter++) {
      if (circularCollision(this, enemies[counter])) {
        disabled = true;
        shorten(npcs);
        break;
      }
    }
  }
}
