// PARENT CLASS OF ALL ENTITIES

class Entity {

  float posX, posY;  // Coordinates of the entity

  int radius;     // Radius of the entity
  int quadrant;  // Quadrant where the entity is located

  void drawEntity(color entityColor, float opacity) {
    fill(entityColor, opacity);
    ellipse(posX, posY, radius, radius);
  }
}
