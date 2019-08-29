int speedX;
int speedY;


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      speedX = 10;
      speedY = 0;
      println(speedX);
    }

    if (keyCode == LEFT) {
      speedX = -10;
      speedY = 0;
    }
    if (keyCode == UP) {
      c.angle += 0.01;
    }

    if (key == ESC) {
      exit();
    }
  }
}
