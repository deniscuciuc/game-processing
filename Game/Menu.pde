enum MenuPage {
  MAIN, PREPLAY, RECORDS, HELP, EXIT_GAME
}

private MenuPage currentMenuPage = MenuPage.MAIN;
private StringBuilder typingStrBuilder = new StringBuilder("");
private final int MAX_CHARACTERS_IN_NAME = 12;
private String selectPlayerName = "Type first player name";
private String firstPlayerName;
private String secondPlayerName;

/*
   Данная функция отвечает за меню.
   В зависимости от currentMenuPage мы рисуем нужную нашу страницу меню
*/
void loadMenu() {
  switch(currentMenuPage) {
    case MAIN:
        drawMainPage();
        break;
    case PREPLAY:
        drawPreplayPage();
        break;
    case RECORDS:
        drawRecordsPage();
        break;
    case HELP:
        drawHelpPage();
        break;
    case EXIT_GAME:
        exitGame();
        break;
  }
}

void exitGame() {
  exit();
}
