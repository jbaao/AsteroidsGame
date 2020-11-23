class Star
{
  int size= (int)(Math.random()*5);
  private int x, y;
  public Star() {
    x = (int)(Math.random()*500);
    y = (int) (Math.random()*500);
  }
  public void show() {
    fill(0);
    ellipse(x,y,size,size);
  }
}
