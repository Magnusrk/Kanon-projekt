Cannon c = new Cannon();

class Cannon {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector angle;
  PVector aVelocity;
  PVector direction;
  
  
  Cannon() {
    location = new PVector(50, 50);
    velocity = new PVector();
    acceleration = new PVector();
    angle = new PVector();
    aVelocity = new PVector();
    direction = new PVector();
  }



void showCannon() {
  scale(2);
  fill(#23390A);
  stroke(#23390A);
   strokeWeight(2);
 line(location.x, location.y-12, 80, 38);
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

}

}
