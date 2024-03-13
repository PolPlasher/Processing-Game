// NPC class

class NPC extends Entity {

  int id;

  float chase_speed;  // Velocity (0 - 1) to chase the target
  float npc_escape_speed;

  Entity collider;

  // NPC constructor
  NPC (int spawnX, int spawnY, int id) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.id = id;  // Id in the npcs array

    this.chase_speed = 0.1;  // Initial velocity

    this.radius = 15;  // Initial radius

    npc_escape_speed = 10;

    collider = new Entity();
  }

  void update() {
    drawEntity(color(0, 0, 255), 255);

    if (id == 0)
      this.chase(player, chase_speed);
    else
      this.chase(npcs[this.id - 1], chase_speed);
  }

  // NOT USED
  void escapeFrom(Player npc) {
    PVector enemy_to_player = new PVector(npc.posX - this.posX, npc.posY - this.posY);

    enemy_to_player.x = 1 / enemy_to_player.x;
    enemy_to_player.y = 1 / enemy_to_player.y;

    this.posX -= enemy_to_player.x * npc_escape_speed;
    this.posY -= enemy_to_player.y * npc_escape_speed;
  }
}
