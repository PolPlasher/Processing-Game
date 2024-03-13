// SceneManager

boolean in_titlescreen = true;  // Whether the player is in the menu screen

String typing = "";

void titleScreen() {

  PFont title_font;
  String title_string = "Processing Game";

  title_font = loadFont("TitleFont.vlw");
  in_titlescreen = true;

  background(#171a4a);

  textFont(title_font);
  
  fill(random(255), random(255), random(255));

  text(title_string, 100, 150);
  fill (255);
  text("Introduce the number of enemies: " + typing + '\n' + " (10 by default) ", 100, 800);
}

void gameOver() {
     
  background(#CE6C6C);
  
  PFont gameover_font;
  gameover_font = loadFont("GameOverFont.vlw");
  textFont(gameover_font);
  
  fill(0);
  
  text("GAME OVER", width / 2 - 200, height / 2);
  
  
  
}
