Cannonball[] bullets = new Cannonball [10];

int r=1;
PImage billede;
int stage;

void setup() 
{
  stage = 1;
  size(1500, 1000);

  for(int i = 0; i < bullets.length; i++) {
    bullets[i] = new Cannonball();
  }

}

void draw() 
{
if(stage == 1){
loadImage("Billede.jpg");
textSize(36);
textAlign(CENTER);
text("Hejsa Med Digsa!!!",750, 150);
textSize(24);
text("Klik hvis du = Sej",1000, 250);
}
if(stage == 2) {
  showBackground();
   c.update();
  c.showCannon();

  r++;
  for (int i = 0; i< bullets.length; i++){
  bullets[i].render();
    println(bullets[2].location);
}
}
}
