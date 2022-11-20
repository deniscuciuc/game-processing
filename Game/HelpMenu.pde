
void drawHelpPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("HELP", buttonMiddleXPos + 30, 130);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN);
}

void keyReleased() {
  if (currentMenuPage == MenuPage.PREPLAY) {
    if (keyCode == BACKSPACE) {
      if (typingStrBuilder.length() == 0) return;
    
    typingStrBuilder.deleteCharAt(typingStrBuilder.length() - 1);
    return;
    }
    if (typingStrBuilder.length() >= MAX_CHARACTERS_IN_NAME) return;
    String strKey = "" + key;
    if (strKey.matches("[a-zA-Z]+\\.?")) {
      typingStrBuilder.append(key);
    }
  }
}
