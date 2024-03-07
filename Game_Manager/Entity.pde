// Parent class of all entities
class Entity {
  int xPos, yPos; // Coordinates of the entity
  int health; // Health of the entity
  int radius; // Radius of the entity
  int quadrant;
  
  
  
  void drawEntity() {
    fill(0);
    ellipse(xPos, yPos, radius, radius);
  }
}
