// SceneManager

String typing = "";

void titleScreen() {

  PFont title_font;
  
  title_font = loadFont("TitleFont.vlw");
  in_menu = true;

  background(255);

  textFont(title_font);
  fill(0, 0, 0);
  text("Pol Blesa putero: " + typing, 100, 100);
}

void numberInput(char number) {

  if (number == '\n' && typing.length() == 0) {  // If no input is given
    amount_enemies = 10;  // The default enemy amount is 10
    in_menu = false;
  }

  if (number < 'A' || number > 'z' && number != '\n') return;  // If the character is out of the abecedary and is not '\n'

  if (number == '\n') {
    amount_enemies = Integer.parseInt(typing);
    in_menu = false;
  }

  typing = typing + number;
}
