Cannonball[] bullets = new Cannonball [10];


void setup() 
{
  size(1000, 1000);

  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i] = new Cannonball(0, 0);
  }
}

void draw() 
{
  showCannon();
  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i].render();
  }
}
