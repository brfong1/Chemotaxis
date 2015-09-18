Bacteria [] bob;
void setup()   
{ 
  size(500, 500);
  frameRate(20);
  bob = new Bacteria[500];
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
    direction = (int)(Math.random()*4);
  } 
  void show()
  { 
  	noStroke();
  	int r = (int)(Math.random()*255);
  	int g = (int)(Math.random()*255);
  	int b = (int)(Math.random()*255);
  	int ranColor = color(r,b,g);
  	fill(ranColor,127);
    ellipse(myX, myY, 15, 15);
  }
  void move()
  {
  		if (direction == 0) //up
  		   myY = myY - (int)(Math.random()*3);
  		else if(direction == 1) //down
  			myY = myY + (int)(Math.random()*3);
        else if(direction == 2) //left
        	myX = myX - (int)(Math.random()*3);
        else//right
        	myX = myX + (int)(Math.random()*3);
  }
}    
