Cannonball[] bullets = new Cannonball [10];

int r=1;


void setup() 
{
  size(1500, 1000);

  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i] = new Cannonball(0, 0);
  }
}

void draw() 
{
  background(250);
  r++;

  showCannon();
  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i].render();
  }
}
