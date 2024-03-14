// PowerUp

class PowerUp extends Entity {

  int type;

  PowerUp(int spawnX, int spawnY) {
    this.posX = spawnX;
    this.posY = spawnY;
  }

  void update() {
    this.drawEntity(color(#C944D8), 255);
  }

  void orbitate(Entity entity) {

    float powerUpToEntityDistance = 25;

    pushMatrix();
    translate(entity.posX, entity.posY);
    rotate(360);
    translate(powerUpToEntityDistance, 0.0);
    popMatrix();
  }
}
