

void settings() {
  size(1440, 760);
}

void setup() {
  
}

/*
   Начальная точка нашей игры.
   Вызывается функция selectScene() чтобы постоянно трекерить на какой сцене сейчас находится игрок
*/
void draw() {
  background(255);
  selectScene();
}
