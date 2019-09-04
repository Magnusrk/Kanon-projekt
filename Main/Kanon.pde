Cannon c = new Cannon();
float C = 0.01;

class Cannon {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float angle;
  PVector direction;


  Cannon() {
    location = new PVector(50, 800/3);
    velocity = new PVector();
    acceleration = new PVector();
    angle = 2*PI;
    direction = new PVector(location.x+30, location.y-12); //Bestemmer punktet hvor kanonen peger imod
  }

  void update() {
    direction.x = cos(angle) * 30;
    direction.y = sin(angle) * 30;
    angle = constrain(angle, PI, 2*PI); //Begrænser kanonens drejning til 180 grader
    //FRICTION
    PVector f = velocity;
    f.mult(-1);
    f.normalize();
    f.mult(C);
    acceleration.add(f);


    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(0.5);
    acceleration.mult(0);
  }



  void showCannon() {
    
    //Tegner og rotere kanonen
    pushMatrix();
    scale(3); //Skalere designet 
    fill(#23390A);
    stroke(#23390A);
    strokeWeight(2);
    line(location.x, location.y-12, direction.x+location.x, direction.y+location.y-12);
    stroke(0);
    
    //Tank Design
    rectMode(CENTER);
    ellipse(location.x-18.5, location.y, 15, 15);
    ellipse(location.x+18.5, location.y, 15, 15);
    rect(location.x, location.y, 40, 15);
    rect(location.x, location.y-10, 13, 8);
    noStroke();
    ellipse(location.x-18.2, location.y, 13, 13);
    ellipse(location.x+18.2, location.y, 13, 13);
    fill(255, 0, 0);
    rect(location.x, location.y, 7, 5);
    fill(255);
    rect(location.x-1, location.y, 1, 5);
    rect(location.x, location.y, 7, 1);
    popMatrix();
  }
}
