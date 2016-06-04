float a = 0;

ArrayList<Box> sponge;

void setMSponge()
{
  Box b = new Box(0,0,0,200);
  sponge = new ArrayList<Box>();
  sponge.add(b);
}

void mousePressed()
{
  ArrayList<Box> next = new ArrayList<Box>();
  for(Box b : sponge)
  {
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  
  sponge = next;
}

void drawMSponge()
{
  background(51);
  stroke(255);
  //noFill();
  fill(127);
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a);
  for(Box b : sponge)
  {
    b.show();
  }
  a += 0.01;
}