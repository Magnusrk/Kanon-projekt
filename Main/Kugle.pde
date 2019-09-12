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
    location = new PVector (100000, 100000);
    velocity = new PVector();
    acceleration = new PVector();
    please = false;
    direction2 = new PVector();
  }

  void render()
  {

    pushMatrix();
    stroke(0);
    strokeWeight(2);
    rectMode(RADIUS);
    translate(location.x, location.y);
    pushMatrix();
    rotate(angle);
    fill(#FFD900);
    scale(0.3);
    ellipse(27, 0, 18, 18);
    rect(0, 0, 25, 10);
    popMatrix();
    if (location.y >=800)
    {
      velocity.mult(0);
      acceleration.mult(0);
    }
    popMatrix();
  }

  void update() {
    if (location.y <=797)
    {
    aAcc = acceleration.mag()/random(15,40);
    aVel += aAcc;
    angle += aVel;
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    }
  }

  void shoot() {
   direction2.normalize();
   direction2.mult(power);
   acceleration.add(direction2);
  }
  void applyForce(PVector force) {
    if (location.y <= 800)
    {
      PVector f = PVector.div(force, 1);
      acceleration.add(f);
    }
  }
  
}
