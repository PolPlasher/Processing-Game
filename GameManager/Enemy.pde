// Enemy class

class Enemy extends Entity {

  Enemy(int spawnX, int spawnY) {
    this.posX = spawnX;  // Spawn coordinates X
    this.posY = spawnY;  // Spawn coordinates Y

    this.health = 50;  // Initial health
    this.radius = 20;  // Initial radius
  }
  
  void escapePlayer(Player player) {
   PVector enemy_to_player = new PVector(player.posX - this.posX, player.posY - this.posY);
   
  }
}
