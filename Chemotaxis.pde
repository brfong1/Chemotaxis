Bacteria [] bob;
void setup()   
{ 
  size(500, 500);
  frameRate(20);
  bob = new Bacteria[1000];
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
    myX = (int)(Math.random()*480) + 10;
    myY = (int)(Math.random()*480) + 10;
  } 
  void show()
  { 
  	noStroke();
  	int r = (int)(Math.random()*255);
  	int g = (int)(Math.random()*255);
  	int b = (int)(Math.random()*255);
  	fill(r,g,b,127);
    ellipse(myX, myY, 15, 15);
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
