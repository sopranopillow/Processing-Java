/*
void setup()
{
  size(800, 600);
}

void draw()
{
  background(150);
  stroke(0);
  line(0,0,100,100);
  stroke(255);
  noFill();
  rect(24, 25, 50, 50);
}*/

void setColors()
{
}

void drawColors()
{
  /*background(150);
  stroke(0);
  line(0,0,100,100);
  stroke(255);
  noFill();
  rect(24, 25, 50, 50);*/
  
  background(0);
  noStroke();
  
  // No fourth argument means 100% opacity.
  fill(0,0,255);
  rect(0,0,width/2,height);
  
  // 255 means 100% opacity.
  fill(255,0,0,255);
  rect(0,0,width,((height-100)/4));
  
  // 75% opacity.
  fill(255,0,0,191);
  rect(0,(((height-100)/4)*1)+25,width,((height-100)/4));
  
  // 55% opacity.
  fill(255,0,0,127);
  rect(0,(((height-100)/4)*2)+50,width,((height-100)/4));
  
  // 25% opacity.
  fill(255,0,0,63);
  rect(0,(((height-100)/4)*3)+75,width,((height-100)/4));
}