public class Player {
  private int x;
  private int y;
  private String name;
  private int score;
  private int hp;
  private boolean isAlive;
  private PImage sprite;
  
  public Player(String name) {
    this.name = name;
    this.isAlive = true;
    this.score = 0;
    this.hp = 5;
  }
  
  public Player(String name, PImage sprite) {
    this.name = name;
    this.sprite = sprite;
    this.isAlive = true;
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
  
  /* Реализуем рисунок нашего игрока в статичном ввиде. Метод будет в любом случае вызываться */
  public void drawPlayer() {
    
  }
  
  public void moveDown() {
    
  }
  
  public void moveUp() {
    
  }
  
  public void moveLeft() {
  }
  
  
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
    this.isAlive = false;
  }
}
