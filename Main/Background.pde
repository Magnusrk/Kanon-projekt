void showBackground()
{
  strokeWeight(0.5);
  stroke(0);
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
  rect(0,   800, 1500, 800);
  
  //Sol
  fill(#FFD95D);
  ellipse(1300, 200, 100, 100);
  
  if (frameCount < 3000) {
    fill(0);
    textSize(75);
    text("Shoot: Ctrl", 200, 200);
    text("Move: Arrow Keys",200,300);
  }
}
