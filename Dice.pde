void setup()
{
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
    dSide = (int)(Math.Random()*5+1);
	}
	void roll()
	{
		//your code here
    if (dSide == 1)
    {
      
    } 
    else if (dSide == 2)
    {
      
    }
    else if (dSide == 3)
    {
      
    }
    else if (dSide == 4)
    {
      
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
	}
}
