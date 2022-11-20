
private ArrayList<DroppingItem> droppingItems = new ArrayList<>();
public Player firstPlayer;
public Player secondPlayer;

/*
   Функция создает двух игроков и устанавливает им имя которое будет заданно в PREPLAY меню
   Имя игрока будет расположенно над его персонажом а так же использоваться в таблице рекордов
*/
void createPlayers(String firstPlayerName, String secondPlayerName) {
  firstPlayer = new Player(firstPlayerName);
  secondPlayer = new Player(secondPlayerName);
}

/*
   Функция отчает за игровую часть.
   Здесь мы вызываем все функции что нужны нам чтобы определить логику игрового процесса
*/
void playGame() {
  drawMap();
  drawUI();
  drawPlayers();
}

/*
   Тут будет реализована логика передвижения обоих персонажей.
   Остается только проверять по клавишам ведь у каждого персонажа есть своя функция для вызова и остальная логика будет там
*/
void keyPressed() {
  
}

void drawPlayers() {
  firstPlayer.drawPlayer();
  secondPlayer.drawPlayer();
}
