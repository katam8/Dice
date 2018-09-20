void setup()
{
  size(500, 500);
  textAlign(CENTER, CENTER);
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int xPos, yPos, dSide;	

	Die(int x, int y) //constructor
	{
		//variable initializations here
    xPos = x;
    yPos = y;
    roll();
	}
	void roll()
	{
    dSide = (int)(Math.random()*6+1);
		//your code here
    if (dSide == 1)
    {
      stroke(2);
      point(xPos, yPos);
    } 
    else if (dSide == 2)
    {
      stroke(2);
      point(xPos - 5, yPos - 5);
      point(xPos + 5, yPos + 5);
    }
    else if (dSide == 3)
    {
      stroke(2);
      point(xPos - 3, yPos - 3);
      point(xPos, yPos);
      point(xPos + 3, yPos + 3);
    }
    else if (dSide == 4)
    {
      stroke(2);
      point(xPos - 3, yPos - 3);
      point(xPos, yPos);
      point(xPos + 3, yPos + 3);
      point(xPos, yPos);
    }
    else if (dSide == 5)
    {
      
    }
    else if (dSide == 6)
    {
      
    }
	}

	void display()
	{
		//your code here
    noStroke();
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255),);
    rect(xPos, yPos, 35, 35, 5);
    roll();
    
	}
}
