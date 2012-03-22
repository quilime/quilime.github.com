void setup()
{
  size(600, 500);
  rectMode(CENTER);
  smooth();
}

void draw()
{
  background(200);

  fill(200, 180, 180);
  rect(width/2, height/2, 100, 400);

  arm (width/2 + 50, 150, 1);
  arm (width/2 + 50, 250, 1);
  arm (width/2 + 50, 350, 1);

  arm (width/2 - 50, 150, -1);
  arm (width/2 - 50, 250, -1);
  arm (width/2 - 50, 350, -1);
  
  fill(255);
  rect(width/2 - 20, 100, 20, 20);
  rect(width/2 + 20, 100, 20, 20);
  rect(width/2, 150, 50, 20);
}

void arm(float x, float y, int side) {


  stroke(0);
  strokeWeight(6);
  noFill();
  pushMatrix();
  translate(x, y + sin(frameCount/8.0)* 20);
  beginShape();
  for (int i = 0; i < 40; i++) {
    float armMove = sin(i/4.0 - (frameCount/8.0)) * 20;    
    vertex(i*5 * side, armMove);
  }
  endShape(); 
  popMatrix();
}



