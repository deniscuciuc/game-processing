
/*
   Проверит если кнопка была нажата левой кнопкой мыши по её координатам и размерам.
   Возвращает boolean значение
*/
boolean buttonWasPressed(int x, int y, int buttonWidth, int buttonHeight) {
  return mousePressed && mouseButton == LEFT && mouseX >= x
         && mouseX <= x + buttonWidth
         && mouseY >= y
         && mouseY <= y + buttonHeight;
}
