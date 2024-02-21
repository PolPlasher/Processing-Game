// Processing Game

float x1, y1, x2, y2, x3, y3, alfa, beta, gamma, offset;

void setup() {

  // Canvas setup
  size(400, 400);
  fill(255);

  x1 = width / 2.0;
  y1 = height / 2.0;

  alfa = 0.1;
  beta = 0.05;
  gamma = 0.025;
  offset = 1;
}

void draw() {
  background(0);

  x1 = (1.0 - alfa) * x1 + alfa * mouseX;
  y1 = (1.0 - alfa) * y1 + alfa * mouseY;
  fill(255, 0, 0);
  ellipse(x1, y1, width / 20.0, height / 20.0);

  x2 = (1.0 - beta) * x2 + beta * mouseX + offset;
  y2 = (1.0 - beta) * y2 + beta * mouseY + offset;
  fill(0, 255, 0);
  ellipse(x2, y2, width / 20.0, height / 20.0);

  x3 = (1.0 - gamma) * x3 + gamma * mouseX + offset;
  y3 = (1.0 - gamma) * y3 + gamma * mouseY + offset;
  fill(0, 0, 255);
  ellipse(x3, y3, width / 20.0, height / 20.0);
}

void keyPressed() {
  float increment = 0.05;
  if (key == 'q') alfa = alfa + increment;
  else if (key == 'a') alfa = alfa - increment;

  if (alfa > 1.0) alfa = 1.0;
  else if (alfa < 0.0) alfa = increment;
}
