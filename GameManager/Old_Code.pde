/*
// Processing Game

// NPCs and PC parameters declaration
int[] npc_x;
int[] npc_y;
int[] npc_quadrant; // Quadrant of each NPC
int pc_quadrant; // Player current quadrant

int amount_npcs = 5;
int radius_npcs = 30;
int radius_pc = 10;

void setup() {
  
  size(800, 600);

  npc_x = new int[amount_npcs];
  npc_y = new int[amount_npcs];
  npc_quadrant = new int[amount_npcs];

  for (int i = 0; i < amount_npcs; i++) {
    npc_x[i] = (int)random(width);
    npc_y[i] = (int)random(height);

    if (npc_x[i] < width / 2) {
      if (npc_y[i] < height / 2) npc_quadrant[i] = 1;
      else npc_quadrant[i] = 4;
    } else {
      if (npc_y[i] < height / 2) npc_quadrant[i] = 2;
      else npc_quadrant[i] = 3;
    }
  }
}

void draw() {

  // Clear last frame
  background (0);

  for (int i = 0; i < amount_npcs; i++) {
    fill(255);
    ellipse(npc_x[i], npc_y[i], radius_npcs, radius_npcs);
  }
}

void mouseMoved() {

  float[] vector = new float[2];  // The X and Y components of each npc
  float module;  // The module of the two previous two vectors

  // Evaluate collisions
  for (int i = 0; i < amount_npcs; i++) {

    // Detects the PC's quadrant
    if (mouseX < width / 2) {
      if (mouseY < height / 2) pc_quadrant = 1;
      else pc_quadrant = 4;
    } else {
      if (mouseY < height / 2) pc_quadrant = 2;
      else pc_quadrant = 3;
    }

    if (pc_quadrant == npc_quadrant[i]) { // Detect if the PC is in the same quadrant as the indexed NPC

      vector[0] = npc_x[i] - mouseX;
      vector[1] = npc_x[i] - mouseX;
      module = sqrt(vector[0] * vector[0] + vector[1] * vector[1]); // Calculate the module

      if (module < radius_pc + radius_npcs) { // Detect if the PC and the NPC are colliding
        println("I just collided with", i);
        break;
      } else println("Not colliding");
    } else println("I just collided with ", pc_quadrant, "different of ", npc_quadrant[i]);

    // Draw the PC
    fill(100, 200, 200);
    ellipse(mouseX, mouseY, radius_pc, radius_pc);
  }
}
*/
