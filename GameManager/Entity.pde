// PARENT CLASS OF ALL ENTITIES

class Entity {

  float posX, posY;  // Coordinates of the entity

  int radius;     // Radius of the entity
  int quadrant;  // Quadrant where the entity is located

  void drawEntity(color entityColor, float opacity) {
    fill(entityColor, opacity);
    ellipse(posX, posY, radius, radius);
  }

  void screenBoundaries() {
    if (this.posX > width - 15) this.posX = width - 15;
    if (this.posX < 15) this.posX = 15;
    
    if (this.posY > height - 15) this.posY = height - 15;
    if (this.posY < 15) this.posY = 15;
  }
  }
