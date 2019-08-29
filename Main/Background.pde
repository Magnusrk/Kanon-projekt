void showBackground()
{
  noStroke();
  background(#B7C3FF);


  pushMatrix();
  fill(#6A3E09);
  rectMode(CENTER);
  translate(1300, 800);
  rotate(PI*0.25);
  rect(0, 0, 300, 300);
  popMatrix();


  rectMode(CORNER);
  fill(#864F0C);
  rect(0, 800, 1500, 800);
}
