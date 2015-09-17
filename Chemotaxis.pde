Bacteria [] bob;
void setup()   
{ 
  size(300, 300);
  frameRate(30);
  bob = new Bacteria[10];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
void draw()   
{ background(0);
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
    myX = (int)(Math.random()*200 + 50);
    myY = (int)(Math.random()*200 + 50);
  }
  void show()
  { int r = (int)(Math.random()*255);
  	int g = (int)(Math.random()*255);
  	int b = (int)(Math.random()*255);
  	fill(r,g,b,127);
    ellipse(myX, myY, 10, 10);
  }
  void move()
  {
  		direction = (int)(Math.random()*4);
  		if (direction == 0) //up
  		   myY = myY - (int)(Math.random()*3);
  		else if(direction == 1) //down
  			myY = myY + (int)(Math.random()*3);
        else if(direction == 2) //left
        	myX = myX - (int)(Math.random()*3);
        else//right
        	myX = myX + (int)(Math.random()*3);
    // myX = myX + (int)((Math.random()*2) -2);
    // myY = myY + (int)((Math.random()*2) -2);
  }
}    
