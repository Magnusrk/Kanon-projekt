void showCannon() {
  pushMatrix();
  scale(2);
  fill(#23390A);
  stroke(#23390A);
  strokeWeight(2);

  line(50, 38, 70, 38);
  strokeWeight(1);
  stroke(0);
  rectMode(CENTER);
  ellipse(31.5, 50, 15, 15);
  ellipse(68.5, 50, 15, 15);
  rect(50, 50, 40, 15);
  rect(50, 40, 13, 8);
  popMatrix();
}
