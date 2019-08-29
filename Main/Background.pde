void showBackground()
{
  strokeWeight(0.5);
  background(#B7C3FF);

  //Pyramide 1
  pushMatrix();
  fill(#CEC847);
  rectMode(CENTER);
  translate(1250, 800);
  rotate(PI*0.25);
  rect(0, 0, 300, 300);
  popMatrix();

  //Pyramide 2
  pushMatrix();
  translate(1000, 800);
  rotate(PI*0.25);
  rect(0, 0, 500, 300);
  popMatrix();
  pushMatrix();

  //Pyramide 3
  translate(700, 800);
  rotate(PI*0.25);
  rect(0, 0, 300, 300);
  popMatrix();

  //Jorden
  rectMode(CORNER);
  fill(#F5ED54);
  rect(0, 800, 1500, 800);
}
