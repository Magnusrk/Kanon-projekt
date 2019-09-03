int bullet = 0;


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      c.acceleration.add(+1, 0);
    }

    if (keyCode == LEFT) {
      c.acceleration.add(-1, 0);
    }
    if (keyCode == UP) {
      c.angle -= 0.05;
    }
    if (keyCode == DOWN) {
      c.angle += 0.05;
    }

    if (key == ESC) {
      exit();
    }
    if (keyCode == CONTROL && bullet < bullets.length && bulletBuffer!=1) {
      PVector startVelo = new PVector();
      startVelo.set(c.direction);
      startVelo.normalize();
      startVelo.mult(powerS);
      float dira = (c.direction.x+c.location.x)*3;
      float dirb = (c.direction.y+c.location.y-12)*3;
      bullets[bullet].location.x = dira;
      bullets[bullet].location.y = dirb;
      bullets[bullet].velocity.add(startVelo);
      bullets[bullet].direction2.set(c.direction);
      bullets[bullet].please = true;
      bullet++;
      bulletBuffer=1;
    }
  }
}
