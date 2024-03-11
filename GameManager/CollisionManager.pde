// CollisionManager

boolean circularCollision(Entity entity1, Entity entity2) {

  PVector distance = new PVector(entity1.posX - entity2.posX, entity1.posY - entity2.posY);
  if (distance.mag() <= entity1.radius / 2 + entity2.radius / 2) {
    return true;
  } else return false;
}
