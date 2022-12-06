StringBuilder typingStrBuilder = new StringBuilder("");
final int MAX_CHARACTERS_IN_NAME = 10;
String selectPlayerName = "";
String playerName = "";

void drawPreplayPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("PREPLAY", buttonMiddleXPos + 30, 130);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN, 200, 70, color(0), color(255));
  
  if (playerName.equals("")) {
    drawTextBoxAndCreatePlayersWithNames(buttonMiddleXPos - 100, 300);
  } else {
    createPlayer(playerName);
    currentScene = Scene.GAME;
  }
}

void keyReleased() {
  if (currentMenuPage == MenuPage.PREPLAY) {
    if (keyCode == BACKSPACE) {
      if (typingStrBuilder.length() == 0) return;
    
    typingStrBuilder.deleteCharAt(typingStrBuilder.length() - 1);
    return;
    }
    if (typingStrBuilder.length() >= MAX_CHARACTERS_IN_NAME) return;
    String strKey = "" + key;
    if (strKey.matches("[a-zA-Z]+\\.?")) {
      typingStrBuilder.append(key);
    }
  }
}

void drawTextBoxAndCreatePlayersWithNames(int x, int y) {
  final int BUTTON_WIDTH = 300;
  final int BUTTON_HEIGHT = 50;
  
  strokeWeight(3);
  noFill();
  rect(x, y, BUTTON_WIDTH, BUTTON_HEIGHT);
  
  final int TEXT_SIZE = 21;
  fill(0);
  textSize(TEXT_SIZE);
  
  if (playerName.isEmpty()) {
    selectPlayerName = "Enter player name";
  }
  
  text(selectPlayerName, x, y - 10);
  text(typingStrBuilder.toString(), x + TEXT_SIZE, y + BUTTON_HEIGHT / 4 + TEXT_SIZE);
  
  
  drawConfirmButton(x + BUTTON_WIDTH + 20, y, TEXT_SIZE);
  confirmPlayerNameByPressingButton(x + BUTTON_WIDTH + 20, y, BUTTON_WIDTH, BUTTON_HEIGHT);
}

void drawConfirmButton(int x, int y, int textSize) {
  strokeWeight(3);
  fill(0);
  rect(x, y, 100, 50);
  
  fill(255);
  textSize(textSize);
  text("CONFIRM", x + 10, y + 35);
}

void confirmPlayerNameByPressingButton(int x, int y, int buttonWidth, int buttonHeight) {
  if (buttonWasPressed(x, y, buttonWidth, buttonHeight)) {
    
    if (playerName.equals("")) {
      playerName = typingStrBuilder.toString();
    }
    
    typingStrBuilder = new StringBuilder("");
  }
}
