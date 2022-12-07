public class DroppingItem {
  private int x;
  private int y;
  private int hp;
  private int speed;
  private PImage texture;
  
  public DroppingItem(int speed, int hp, PImage texture) {
    this.speed = speed;
    this.hp = hp;
    this.texture = texture;
    this.y = -50;
    generateRandomXPosition();
  }
  
  public void drawMovingDroppingItem() {
    image(texture, this.x, this.y);
    y += speed;
  }
  
  private void generateRandomXPosition() {
    do {
      this.x = (int) random(40, width - 40);
    } while(x + 60 > width);
  }
}
