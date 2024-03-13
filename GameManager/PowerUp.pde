

class PowerUp extends Entity {

  int type;

  PowerUp(int spawnX, int spawnY) {
    this.posX = spawnX;
    this.posY = spawnY;
  }

  void update() {
    this.drawEntity(color(#C944D8), 255);
  }

  void orbitate() {
  }
}
