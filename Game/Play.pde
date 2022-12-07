ArrayList<DroppingItem> droppingItems = new ArrayList<>();
Player player;

PImage cometTexture;

int droppingItemsCurrentSpeed = 4;
int maxDroppingItems = 4;
int droppingItemsCurrentHp = 1;

void createPlayer(String playerName) {
  player = new Player(playerName, loadImage("rocket.png"));
}

void playGame() {
  drawMap();
  drawUI();
  player.drawPlayer();
  generateDroppingItems();
  drawDroppingItems();
  changeCurrentLevelByTime();
}

void generateDroppingItems() {
  if (droppingItems.size() < maxDroppingItems) {
    selectRandomCometTexture();
    droppingItems.add(new DroppingItem(droppingItemsCurrentSpeed, droppingItemsCurrentHp, cometTexture));
  }
}

void selectRandomCometTexture() {
  cometTexture = loadImage("cometRed.png");
}

void changeCurrentLevelByTime() {
  if (currentSecond >= 60) {
    droppingItemsCurrentSpeed = 6;
  } else if (currentSecond >= 120) {
    droppingItemsCurrentHp = 2;
  } else if (currentSecond >= 180) {
    maxDroppingItems = 6;
  } else if (currentSecond >= 240) {
    maxDroppingItems = 4;
    droppingItemsCurrentHp = 1;
  }
}

void drawDroppingItems() {
  for (DroppingItem droppingItem : droppingItems) {
    droppingItem.drawMovingDroppingItem();
  }
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

  if (keyCode == DELETE) {
    player.getHit();
  }
}