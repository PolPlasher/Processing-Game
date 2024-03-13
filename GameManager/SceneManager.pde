// SceneManager

String typing = "";

void titleScreen() {

  PFont title_font;
  String title_string = "Processing Game";

  title_font = loadFont("TitleFont.vlw");
  in_menu = true;

  background(255);

  textFont(title_font);
  fill(0, 0, 0);
  
  fill(random(255), random(255), random(255));

  text(title_string, 100, 150);
  fill (0, 0, 0);
  text("Introduce the number of enemies: " + typing + '\n' + " (10 by default) ", 100, 800);
}
