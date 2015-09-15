Bacteria [] bob;
void setup()   
{ 
  size(300, 300);
  bob = new Bacteria[10];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
void draw()   
{ 
  for (int myY = 0; myY < 300; myY = myY + 20)
  {
    for (int myX = 0; myX < 300; myX = myX + 20)
    {
      for (int i = 0; i < bob.length; i++)
      {
        bob[i].show();
        bob[i].move();
      }
    }
  }
}
class Bacteria    
{     
  int myX, myY;
  Bacteria()
  {
    myX = (int)(Math.random()*270 + 30);
    myY = (int)(Math.random()*270 + 30);
  }
  void show()
  {
    ellipse(myX, myY, 20, 20);
  }
  void move()
  {
    int xmove = myX + (int)((Math.random()*2) -2);
    int ymove = myY + (int)((Math.random()*2) -2);
  }
}    
