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
  bob = new Bacteria[10];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
public void draw()   
{ 
      for (int i = 0; i < bob.length; i++)
      {
        bob[i].show();
        bob[i].move();
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
  public void show()
  {
    ellipse(myX, myY, 20, 20);
  }
  public void move()
  {
    int xmove = myX + (int)((Math.random()*2) -2);
    int ymove = myY + (int)((Math.random()*2) -2);
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
