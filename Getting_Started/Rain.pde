//rain (29, 137, 173)
//background (212, 214, 214)

Drop[] drops = new Drop[100];

void setRain()
{
  for(int i = 0; i < drops.length; i++)
  {
    drops[i] = new Drop();
  }
}

void makeItRain()
{
  background(212, 214, 214);
  for(int i = 0; i < drops.length; i++)
  {
    drops[i].fall();
    drops[i].show();
  }
}