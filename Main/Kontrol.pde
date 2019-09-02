int bullet = 0;


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      c.acceleration.add(+0.40, 0);
    }

    if (keyCode == LEFT) {
      c.acceleration.add(-0.40, 0);
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
    if(keyCode == CONTROL && bullet < 10) {
      println(1);
      bullets[bullet].location.x = (c.direction.x+c.location.x)*3;
      bullets[bullet].location.y = (c.direction.y+c.location.y-12)*3;
      bullet++;
    }
      
      
  }
}
