Cannon c = new Cannon();

class Cannon {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float angle;
  PVector aVelocity;
  PVector direction;
  
  
  Cannon() {
    location = new PVector(50, 50);
    velocity = new PVector();
    acceleration = new PVector();
    angle = 1.5*PI;
    aVelocity = new PVector();
    direction = new PVector(location.x+30, location.y-12);
  }
  
  void update() {
    direction.x = cos(angle) * 30;
    direction.y = sin(angle) * 30;
    angle = constrain(angle, PI, 2*PI);
    angle += 0.01;
  }



void showCannon() {
  pushMatrix();
  scale(2);
  fill(#23390A);
  stroke(#23390A);
   strokeWeight(2);
 line(location.x, location.y-12, direction.x+location.x, direction.y+location.y-12);
 stroke(0);
 rectMode(CENTER);
  ellipse(location.x-18.5, location.y, 15, 15);
  ellipse(location.x+18.5, location.y, 15, 15);
 rect(location.x, location.y, 40, 15);
 rect(location.x, location.y-10, 13, 8);
 noStroke();
  ellipse(location.x-18.2, location.y, 13, 13);
  ellipse(location.x+18.2, location.y, 13, 13);
  fill(255,0,0);
  rect(location.x, location.y, 7, 5);
  fill(255);
  rect(location.x-1, location.y, 1, 5);
  rect(location.x, location.y, 7, 1);
  popMatrix();
}

}
