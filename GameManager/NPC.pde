// NPC class

class NPC extends Entity {

  float chase_velocity;  // Velocity (0 - 1) to chase the target
  float npc_escape_speed;

  // NPC constructor
  NPC (int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinate X
    this.posY = spawnY;  // Spawn coordinate Y

    this.chase_velocity = 0.1;  // Initial velocity

    this.radius = 15;  // Initial radius

    npc_escape_speed = 10;
  }

  void update() {
    drawEntity(color(0, 0, 255), 255);
    npc1.chase(player);
    npc2.chase(npc1);

    if (circularCollision(this, player))
      escapeFrom(player);
  }

  // Chase another entity
  void chase(Entity chasingTarget) {
    posX = (1 -   chase_velocity) * posX + chase_velocity * chasingTarget.posX;
    posY = (1 - chase_velocity) * posY + chase_velocity * chasingTarget.posY;
  }

  void escapeFrom(Player npc) {
    PVector enemy_to_player = new PVector(npc.posX - this.posX, npc.posY - this.posY);

    enemy_to_player.x = 1 / enemy_to_player.x;
    enemy_to_player.y = 1 / enemy_to_player.y;

    this.posX -= enemy_to_player.x * npc_escape_speed;
    this.posY -= enemy_to_player.y * npc_escape_speed;
  }
}
