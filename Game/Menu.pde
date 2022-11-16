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

/*
   Рисует самую первую страницу меню.
   Отсюда мы переходим на другие страницы и можем выйти из игры
*/
void drawMainPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("MAIN MENU", buttonMiddleXPos + 26, 130);
  drawButton(buttonMiddleXPos, 175, "PLAY", MenuPage.PREPLAY);
  drawButton(buttonMiddleXPos, 250, "RECORDS", MenuPage.RECORDS);
  drawButton(buttonMiddleXPos, 325, "HELP", MenuPage.HELP);
  drawButton(buttonMiddleXPos, 400, "EXIT", MenuPage.EXIT_GAME);
}

/*
   Рисует предигровую страницу.
   Здесь оба игрока по очереди вбивают свое имя для своих персонажей.
   Имена будут хранится в файле и будут вытаскивать при входе в игру чтобы сохранять очки каждого игрока.
   Если игрок напишет уже существующий ник то тогда будет использовать тот ник и не будет создаваться еще один идентичный
*/
void drawPreplayPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("PREPLAY", buttonMiddleXPos + 30, 130);
  drawButton(25, 25, "GO BACK", MenuPage.MAIN);
}

/*
   Рисует страницу рекордов.
   Здесь мы используем все очки что сохраняются после завершения матча в файл а оттуда мы уже добавляем в список игроков и вывводим их максимальный рекорд.
   Чтобы это реализовать достаточно сравнить после завершения матча счет игроков и сравнить старый рекорд если есть. Таким образом заменить если нужно.
   После того как определен рекорд каждого игрока то тут уже сортируем по убыванию чтобы показать у кого из игроков самый высокий рекорд
*/
void drawRecordsPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("RECORDS", buttonMiddleXPos + 30, 130);
  drawButton(25, 25, "GO BACK", MenuPage.MAIN);
}

/*
   Рисует вспомогательную страницу.
   Она нужна по требованию Корлата так что здесь просто после того как закончим игру оставим мини-гайд со скринами и текстом
*/
void drawHelpPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("HELP", buttonMiddleXPos + 30, 130);
  drawButton(25, 25, "GO BACK", MenuPage.MAIN);
}

void drawButton(int x, int y, String text, MenuPage goToPage) {
  final int BUTTON_WIDTH = 200;
  final int BUTTON_HEIGHT = 50;
  
  strokeWeight(3);
  noFill();
  rect(x, y, BUTTON_WIDTH, BUTTON_HEIGHT);
  
  final int TEXT_SIZE = 21;
  fill(0);
  textSize(TEXT_SIZE);
  text(text, x + TEXT_SIZE, y + BUTTON_HEIGHT / 4 + TEXT_SIZE);
  
    switchSceneByPressedMouse(x, y, BUTTON_WIDTH, BUTTON_HEIGHT, goToPage);
}

void exitGame() {
  exit();
}

void switchSceneByPressedMouse(int x, int y, int buttonWidth, int buttonHeight, MenuPage goToPage) {
  if (mousePressed) {
    
    boolean isButtonPressed = mouseX >= x && mouseX <= x + buttonWidth
                              && mouseY >= y && mouseY <= y + buttonHeight;
    
    if (mouseButton == LEFT && isButtonPressed) {
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
}
