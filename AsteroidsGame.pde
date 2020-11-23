Spaceship ship = new Spaceship();
Star[] sky = new Star[150];
public void setup() 
{
  background(0);
  size(500,500);
  for(int i=0; i<sky.length;i++) {
  sky[i] = new Star();
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
}
