Cannonball[] bullets = new Cannonball [10];

int r=1;



import processing.sound.*;
SoundFile file;

void setup() 
{
  size(1500, 1000);
  
  file = new SoundFile(this, "game music.wav");
  file.play(); // Plays music
  
  
  for(int i = 0; i < bullets.length; i++) {
    bullets[i] = new Cannonball();
  }

}

void draw() 
{


  showBackground();

  c.update();
  c.showCannon();

  r++;
  for (int i = 0; i< bullets.length; i++)
  {
    bullets[i].render();
  }
}
