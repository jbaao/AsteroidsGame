class Asteroid extends Floater  
{
  private int rotationSpeed;
  public Asteroid()
  {
    rotationSpeed = (int)(Math.random()*10);
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
   myColor= color(200,255,255);
   myCenterX = Math.random()*500+20;
   myCenterY = Math.random()*500+20;
   myXspeed =Math.random()*10-5;
   myYspeed = Math.random()*10-5;
   myPointDirection=(Math.random()*360);
  }
   public void move(){
    turn(rotationSpeed);
    super.move();
   }
  public double getX()
  {
    return(float)myCenterX;
  }
  public double getY()
  {
    return(float)myCenterY;
  }
}
