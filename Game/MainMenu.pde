
void drawMainPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("MAIN MENU", buttonMiddleXPos + 26, 130);
  drawMenuNavigationButton(buttonMiddleXPos, 175, "PLAY", MenuPage.PREPLAY);
  drawMenuNavigationButton(buttonMiddleXPos, 250, "RECORDS", MenuPage.RECORDS);
  drawMenuNavigationButton(buttonMiddleXPos, 325, "HELP", MenuPage.HELP);
  drawMenuNavigationButton(buttonMiddleXPos, 400, "EXIT", MenuPage.EXIT_GAME);
}

void drawMenuNavigationButton(int x, int y, String text, MenuPage goToPage) {
  final int BUTTON_WIDTH = 200;
  final int BUTTON_HEIGHT = 50;
  
  strokeWeight(3);
  noFill();
  rect(x, y, BUTTON_WIDTH, BUTTON_HEIGHT);
  
  final int TEXT_SIZE = 21;
  fill(0);
  textSize(TEXT_SIZE);
  text(text, x + TEXT_SIZE, y + BUTTON_HEIGHT / 4 + TEXT_SIZE);
  
  switchMenuPageByPressedButton(x, y, BUTTON_WIDTH, BUTTON_HEIGHT, goToPage);
}

void switchMenuPageByPressedButton(int x, int y, int buttonWidth, int buttonHeight, MenuPage goToPage) {
  if (buttonWasPressed(x, y, buttonWidth, buttonHeight)) {
      switch (goToPage) {
        case MAIN:
            currentMenuPage = MenuPage.MAIN;
            break;
        case PREPLAY:
            currentMenuPage = MenuPage.PREPLAY;
            break;
        case RECORDS:
            currentMenuPage = MenuPage.RECORDS;
            break;
        case HELP:
            currentMenuPage = MenuPage.HELP;
            break; 
        case EXIT_GAME:
            currentMenuPage = MenuPage.EXIT_GAME;
            break;
      }
  }
}
