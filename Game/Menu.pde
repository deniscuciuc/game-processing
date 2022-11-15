enum MenuPage {
  MAIN, PREPLAY, RECORDS, HELP
}

MenuPage currentMenuPage = MenuPage.MAIN;

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
  }
}

void drawMainPage() {
  
}

void drawPreplayPage() {
  
}

void drawRecordsPage() {
  
}

void drawHelpPage() {
  
}

void goToMainPage() {
  currentMenuPage = MenuPage.MAIN;
}
