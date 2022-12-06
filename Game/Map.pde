private Barrier[] bariers;


void drawMap() {
  setMapBackground();
  drawBarriers();
}

void drawBarriers() {
  initBarriers();
  for (Barrier barier : bariers) {
    barier.drawBarrier();
  }
}

void initBarriers() {
  bariers = new Barrier[] {
    new Barrier(0, 0, 2, height)
  };
}

boolean isPlayerTouchingWall(Player player) {
  return false;
}

void setMapBackground() {
  PImage background = loadImage("backgroundGameplay.jpg");
  background(background);
}
