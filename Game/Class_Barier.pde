public class Barrier {
  private int x;
  private int y;
  private int barrierWidth;
  private int barrierHeight;
  private PImage texture;
  
  public Barrier(int x, int y, int barrierWidth, int barrierHeight) {
    this.x = x;
    this.y = y;
    this.barrierWidth = barrierWidth;
    this.barrierHeight = barrierHeight;
  }
  
  public Barrier(int x, int y, int barrierWidth, int barrierHeight, PImage texture) {
    this.x = x;
    this.y = y;
    this.barrierWidth = barrierWidth;
    this.barrierHeight = barrierHeight;
    this.texture = texture;
  }
  
  /* Рисует барьер. На прямоугольник накладывается картинка */
  public void drawBarrier() {
    noStroke();
    fill(0);
    rect(this.x, this.y, this.barrierWidth, this.barrierHeight);
  }
}
