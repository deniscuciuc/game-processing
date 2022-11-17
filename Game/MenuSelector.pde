enum MenuPage {
  MAIN, PREPLAY, RECORDS, HELP, EXIT_GAME
}

private MenuPage currentMenuPage = MenuPage.MAIN;

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
