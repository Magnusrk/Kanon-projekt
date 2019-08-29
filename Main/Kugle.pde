class Cannonball {
  PVector location;
  PVector velocity;
  PVector acceleration;

  Cannonball(float x, float y)
  {
    x = random(0,1000);
    y = random(0,1000);
    location = new PVector (x, y);
    velocity = new PVector();
    acceleration = new PVector(0.5,0.5);
  }

  void render()
  {

    pushMatrix();
    rectMode(RADIUS);
    translate(location.x,location.y);
    rotate(radians(r*2));
    fill(#FFD900);
    scale(0.4);
    ellipse(27,0,18,18);
    rect(0, 0, 25, 10);
    popMatrix();
    
    velocity.add(acceleration);
    location.add(velocity);
  }
}
