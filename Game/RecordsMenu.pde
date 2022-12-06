

void drawRecordsPage() {
  setRecordsBackground();

  final int buttonMiddleXPos = width / 2 - 100;
  fill(255);
  textSize(26);
  text("TOP 10 PLAYERS", buttonMiddleXPos, 90);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN, 200, 70, color(0), color(255));
   
  ArrayList<Player> players = loadPlayersRecords();
  textSize(23);
  int x = 600;
  int y = 170;
  fill(255);
  for (int i = 0, n = players.size(); i < n; i++) {
    Player player = players.get(i);

    if (i >= 10) continue;

    text(player.getName(), x, y + i * 20);
    text(player.getScore(), x + 200, y + i * 20);
    y += 30;
  }
}

void setRecordsBackground() {
  PImage bg = loadImage("backgroundRecords.jpg");
  background(bg);
}
