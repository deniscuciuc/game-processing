
/*
   Рисует предигровую страницу.
   Имена будут хранится в файле и будут вытаскивать при входе в игру чтобы сохранять очки каждого игрока.
   Если игрок напишет уже существующий ник то тогда будет использовать тот ник и не будет создаваться еще один идентичный
*/
private StringBuilder typingStrBuilder = new StringBuilder("");
private final int MAX_CHARACTERS_IN_NAME = 16;

private String selectPlayerName = "";
private String playerName = "";


void drawPreplayPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("PREPLAY", buttonMiddleXPos + 30, 130);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN);
  
  if (playerName.equals("")) {
    drawTextBoxAndCreatePlayersWithNames(buttonMiddleXPos - 100, 300);
  } else {
    createPlayer(playerName);
    
    drawStartGameButton(buttonMiddleXPos + 15, 350);
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

void drawStartGameButton(int x, int y) {
  strokeWeight(3);
  fill(0);
  rect(x, y, 100, 50);
  
  fill(255);
  textSize(21);
  text("START", x + 25, y + 35);
  
  if (buttonWasPressed(x, y, 100, 50)) {
    currentScene = Scene.GAME;
  }
}
