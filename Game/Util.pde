
boolean buttonWasPressed(int x, int y, int buttonWidth, int buttonHeight) {
  return mousePressed && mouseButton == LEFT && mouseX >= x
    && mouseX <= x + buttonWidth
    && mouseY >= y
    && mouseY <= y + buttonHeight;
}

void setFont() {
  PFont mono = createFont("joystixmonospace.ttf", 128);
  textFont(mono);
}

void sortPlayerRecords(ArrayList<Player> listOfPlayers) {
  int n = listOfPlayers.size();
  Player temp = null;
  for (int i = 0; i < n; i++) {
    for (int j = 1; j < (n-i); j++) {
      if (listOfPlayers.get(j-1).getScore() < listOfPlayers.get(j).getScore()) {
        temp = listOfPlayers.get(j-1);
        listOfPlayers.set(j-1, listOfPlayers.get(j));
        listOfPlayers.set(j, temp);
      }
    }
  }
}