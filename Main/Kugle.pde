class Cannonball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  Cannonball()
  {
    location = new PVector (10000, 10000);
    velocity = new PVector();
    acceleration = new PVector();
  }

  void render()
  {
    pushMatrix();
    stroke(0);
    rectMode(RADIUS);
    translate(location.x,location.y);
    rotate(radians(r*2));
    fill(#FFD900);
    scale(0.3);
    ellipse(27,0,18,18);
    rect(0, 0, 25, 10);
    popMatrix();
    
    velocity.add(acceleration);
    location.add(velocity);
    
    
    
    
  }
}
