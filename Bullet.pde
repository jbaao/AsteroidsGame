class Bullet extends Floater
{
  public Bullet(Spaceship ship)
  {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getDirection();
    accelerate(6);
    myColor = color(231,254,255);
  }
  public void show()
  {
    fill(myColor);
    {
      fill(myColor);
      stroke(myColor);
      ellipse((float)myCenterX, (float)myCenterY, 10, 10);
    }
    }
    public double getX()
    {
      return (float)myCenterX;
    }
    public double getY()
    {
      return (float)myCenterY;
    }
  }
