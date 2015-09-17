import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

Bacteria [] bob;
public void setup()   
{ 
  size(300, 300);
  frameRate(30);
  bob = new Bacteria[10];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
public void draw()   
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
  public void show()
  { int r = (int)(Math.random()*255);
  	int g = (int)(Math.random()*255);
  	int b = (int)(Math.random()*255);
  	fill(r,g,b,127);
    ellipse(myX, myY, 10, 10);
  }
  public void move()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
