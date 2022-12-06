
void drawMainPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  fill(0);
  text("MAIN MENU", buttonMiddleXPos + 26, 130);
  drawMenuNavigationButton(buttonMiddleXPos, 175, "PLAY", MenuPage.PREPLAY, 200, 70, color(0), color(255));
  drawMenuNavigationButton(buttonMiddleXPos, 250, "RECORDS", MenuPage.RECORDS, 200, 70, color(0), color(255));
  drawMenuNavigationButton(buttonMiddleXPos, 325, "HELP", MenuPage.HELP, 200, 70, color(0), color(255));
  drawMenuNavigationButton(buttonMiddleXPos, 400, "EXIT", MenuPage.EXIT_GAME, 200, 70, color(0), color(255));
}

void drawMenuNavigationButton(int x, int y, String text, MenuPage goToPage, int buttonWidth, int buttonHeight, color buttonFill, color textFill) {
  strokeWeight(3);
  fill(buttonFill);
  rect(x, y, buttonWidth, buttonHeight);
  
  final int TEXT_SIZE = 21;
  fill(textFill);
  textSize(TEXT_SIZE);
  text(text, x + TEXT_SIZE, y + buttonHeight / 4 + TEXT_SIZE);
  
  switchMenuPageByPressedButton(x, y, buttonWidth, buttonHeight, goToPage);
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
