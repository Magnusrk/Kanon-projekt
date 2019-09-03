class Cannonball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean please;
  PVector direction2;
  float angle;
  float aVel;
  float aAcc;

  Cannonball()
  {
    location = new PVector (10000, 10000);
    velocity = new PVector();
    acceleration = new PVector();
    please = false;
    direction2 = new PVector();
  }

  void render()
  {
    pushMatrix();
    stroke(0);
    rectMode(RADIUS);
    translate(location.x, location.y);
    rotate(angle);
    fill(#FFD900);
    scale(0.3);
    ellipse(27, 0, 18, 18);
    rect(0, 0, 25, 10);
    popMatrix();

  }

  void update() {
    aAcc = acceleration.mag()/30;
    aVel += aAcc;
    angle += aVel;
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void shoot() {
      direction2.normalize();
      direction2.mult(power);
      acceleration.add(direction2);
  }
  void applyForce(PVector force) {
    PVector f = PVector.div(force,1);
    acceleration.add(f);
  }
    
}
