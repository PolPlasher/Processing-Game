// CollisionManager

int updateQuadrant(Entity entity) {  // Detects wich quadrant the entity is on

  if (entity.posX < width / 2) {    // Left part of the screen
    if (entity.posY < height / 2)
      entity.quadrant = 1;        // Up left corner = 1st quadrant
    else entity.quadrant = 4;    // Down left corner = 4th quadrant
  } else {
    if (entity.posY < height / 2)  // Right part of the screen
      entity.quadrant = 2;        // Up right corner = 2nd quadrant
    else entity.quadrant = 3;    // Down right corner = 3rd quadrant
  }
  return entity.quadrant;
}

boolean circularCollision(Entity entity1, Entity entity2) {  // Detects if there is a circular collision between two entities

  if (updateQuadrant(entity1) != updateQuadrant(entity2))  // Exclude the case where the two entities are in different quadrants
    return false;

  PVector distance = new PVector(entity1.posX - entity2.posX, entity1.posY - entity2.posY);  // Get the vector between the two entities
  if (distance.mag() <= entity1.radius / 2 + entity2.radius / 2) {                          // Check if the magnitude is the minimum to begin colliding
    return true;
  } else return false;
}
