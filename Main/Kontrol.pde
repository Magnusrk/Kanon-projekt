int speedX;
int speedY;


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      c.acceleration.add(+0.15, 0);
    }

    if (keyCode == LEFT) {
      c.acceleration.add(-0.15, 0);
    }
    if (keyCode == UP) {
      c.angle -= 0.01;
    }
    if (keyCode == DOWN) {
      c.angle += 0.01;
    }

    if (key == ESC) {
      exit();
    }
  }
}
