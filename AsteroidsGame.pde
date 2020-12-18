Spaceship ship = new Spaceship();
ArrayList <Asteroid> stroid = new ArrayList <Asteroid>();
int stroidNum = 10;
Star[] sky = new Star[150];
ArrayList <Bullet> pew = new ArrayList <Bullet>();

public void setup() 
{
  background(0);
  size(500,500);
  for(int i=0; i<sky.length;i++) {
  sky[i] = new Star();
  }
  for(int i =0;i<stroidNum;i++) {
    Asteroid rock = new Asteroid();
    stroid.add(rock);
  }
}
public void draw() 
{
  background(0);
  for(int i =0; i<sky.length; i++) {
    sky[i].show();
  }
ship.move();
ship.show();

  for(int i=0; i<stroidNum;i++)
  {
    float distance =dist((float)stroid.get(i).getX(),(float)stroid.get(i).getY(),(float)ship.getX(),(float)ship.getY());
    if (distance<30)
    {
      stroid.remove(i); 
    }
    else{
       stroid.get(i).show();
      stroid.get(i).move();
    }

}
for (int i =0; i<pew.size(); i++)
  {
    pew.get(i).move();
    pew.get(i).show();
  
    for (int j =0; j<pew.size(); j++)
    {
      float d = dist((float)pew.get(i).getX(), (float)pew.get(i).getY(), (float)stroid.get(j).getX(), (float)stroid.get(j).getY());
      if (d<50)
      {
        stroid.remove(j);
        pew.remove(i);
        break;
      }
    }
  }
}
public void keyPressed()
{
  if(key=='d') {
    ship.turn(15);
  }
  if(key=='a'){
    ship.turn(-15);
  }
  if(key=='w'){
    ship.accelerate(0.15);
  }
  if(key=='s'){
  }
  if(key=='q'){
    ship.hyperspace();
  }
  if(key==' ')
  {
    Bullet hit = new Bullet(ship);
    pew.add(hit);
  }
}

