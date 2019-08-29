class Cannonball {
  PVector location;

  
  
  
   Cannonball(float x, float y)
  {
    x = 100;
    y = 100;
    location = new PVector (x,y);
  }
  
  void render()
  {
    fill(0);
    ellipse(location.x, location.y, 10,10);
  }
  
}
