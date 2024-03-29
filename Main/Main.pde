Cannonball[] bullets = new Cannonball [100];


float power = 0.01;
int r=1;
float powerS = 8;

PVector gravity = new PVector(0, 0.1);
int bulletBuffer = 1;
PFont font;

void setup() 
{
  size(1500, 1000);
      font = loadFont("ARDESTINE-34.vlw");
      textFont(font);
  for (int i = 0; i < bullets.length; i++) {
    bullets[i] = new Cannonball();
  }
}

void draw() 
{

  if (frameCount%30 == 0) { //Decides buffer between shots
    bulletBuffer = 0;
  }
  
  showBackground();
  r++;

  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i].update();
    bullets[i].render();
    if (bullets[i].please == true) {
      PVector friction = bullets[i].velocity.get();
      friction.mult(-1);
      friction.normalize();
      friction.mult(C);
      bullets[i].applyForce(friction);
      bullets[i].applyForce(gravity);
      bullets[i].shoot();
    }
  }
  c.update();
  c.showCannon();
}
