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
      for (int i = 0; i < bob.length; i++)
      {
        bob[i].show();
        bob[i].move();
      }
}
class Bacteria    
{     
  int myX, myY, direction, num;
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
  	for(int num = 0; num <= 3; num++)
  	{
  		direction = (int)(Math.random()*3);
  		if (direction = num)
  		{
  			//i still dont knowww
  		}

  	}


    myX = myX + (int)((Math.random()*2) -2);
    myY = myY + (int)((Math.random()*2) -2);
  }
}    
