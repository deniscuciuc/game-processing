ArrayList<DroppingItem> droppingItems = new ArrayList<>();
Player player;


void createPlayer(String playerName) {
  player = new Player(playerName, loadImage("rocket.png"));
}

void playGame() {
  drawMap();
  drawUI();
  player.drawPlayer();
}

void keyPressed() {
  if (keyCode == LEFT) {
    player.moveLeft();
  } else if (keyCode == RIGHT) {
    player.moveRight();
  }

  if (keyCode == UP) {
    player.moveUp();
  } else if (keyCode == DOWN) {
    player.moveDown();
  }

  if (keyCode == TAB) {
    player.attack();
  }

  if (keyCode == BACKSPACE) {
    player.getHit();
  }
}