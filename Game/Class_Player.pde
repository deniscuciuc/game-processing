public class Player {
  private int x;
  private int y;
  private String name;
  private int score;
  private int hp;
  
  public Player(String name) {
    this.name = name;
    this.score = 0;
    this.hp = 5;
  }
  
  public String getName() {
    return this.name;
  }
  
  public int getScore() {
    return this.score;
  }
  
  public void setScore(int score) {
    this.score = score;
  }
  
  public int getHp() {
    return this.hp;
  }
  
  /* Реализуем рисунок нашего игрока в статичном ввиде */
  public void drawPlayer() {
  }
  
  /* Прыжок игрока и анимация во время прыжка */
  public void jump() {
  }
  
  /* Движение игрока в лево и анимация */
  public void moveLeft() {
  }
  
  /* Движение игрока в право и анимация */
  public void moveRight() {
  }
  
  /* Игрок получает урон. У него отбирается хп и анимация */
  public void getHit() {
  }
  
  /* Игрок атакует */
  public void attack() {
  }
  
  /* Игрок умирает */
  public void die() {
  }
}
