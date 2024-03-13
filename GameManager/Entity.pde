// PARENT CLASS OF ALL ENTITIES

class Entity {

  boolean disabled; // If the entity is disabled (dead)
  
  float posX, posY;  // Coordinates of the entity

  int radius;       // Radius of the entity
  int quadrant;    // Quadrant where the entity is located
  

  void drawEntity(color entityColor, float opacity) {
    fill(entityColor, opacity);
    ellipse(posX, posY, radius, radius);
  }

  void screenBoundaries(boolean state) {
    if (state) {
      if (this.posX > width - 15) this.posX = width - 15;
      if (this.posX < 15) this.posX = 15;

      if (this.posY > height - 15) this.posY = height - 15;
      if (this.posY < 15) this.posY = 15;
    }
  }

  void chase(Entity chasing_target, float chase_speed) {
    this.posX = (1 - chase_speed) * posX + chase_speed * chasing_target.posX;
    this.posY = (1 - chase_speed) * posY + chase_speed * chasing_target.posY;
  }
}
