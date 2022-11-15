private Barrier[] bariers;


void drawMap() {
  drawBarriers();
  drawBackground();
}

/*
   Функция сначала вызывает инициализацию всех барьеров а после рисует.
   Чтобы их нарисовать мы проходимся по всем барьерам в списке и у каждого выводим метод drawBarier()
*/
void drawBarriers() {
  initBarriers();
  for (Barrier barier : bariers) {
    barier.drawBarrier();
  }
}

/* 
   Этой функцией мы инициализируем наш список барьеров.
   Здесь мы создаем все нужные нам барьеры на карте (стены, платформы, земля)
*/
void initBarriers() {
  bariers = new Barrier[] {
    new Barrier(10, 50, 50, 50)
  };
}

/* Нарисует background */
void drawBackground() {
  
}
