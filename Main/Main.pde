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


  showBackground();

  c.update();
  c.showCannon();

  r++;
  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i].render();
  }
}
