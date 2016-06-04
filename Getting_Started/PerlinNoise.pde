
int cols,rows;
int scl = 20;
int w = 2000, h=1600;

float flying = 0;
float[][] terrain;

void setPerlin() {
  cols = w / scl;
  rows = h/ scl;
  terrain = new float[cols][rows];
}

void drawPerlin()
{
  //flying += 0.1;
  flying -= 0.1;
  
  //flying += 0.01;
  //flying -= 0.01;
  
  float yoff = flying;
  for (int y = 0; y < rows-1; y++) 
  {
    float xoff = 0;
    for (int x = 0; x < cols; x++) 
    {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -150, 150);
      xoff+=0.1;
    }
    yoff+=0.1;
  }
  
  background(0);
  stroke(255);
  noFill();
  fill(133, 89, 19);
  
  translate(width/2, height/2+50);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  
  
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
      //rect(x*scl, y*scl, scl, scl);
    }
    endShape();
  }
  
  pushMatrix();
    translate(500, height*0.35, 250);
    rotateY(radians(frameCount*2));
    rotateX(radians(frameCount*2));
    noFill();
    //fill(133, 89, 19);
    stroke(255);
    sphere(100);
  popMatrix();
}