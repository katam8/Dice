void setup()
{
  size(500, 500);
  textAlign(CENTER, CENTER);
	noLoop();
}
void draw()
{
	//your code here
  background(255);
  for(int x = 15; x < 470; x = x + 60)
  { 
    Die kam = new Die(x, 15);
    kam.display();
  }
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
      strokeWeight(6);
      point(xPos + 25, yPos + 25);
    } 
    else if (dSide == 2)
    {
      strokeWeight(6);
      point(xPos + 15, yPos + 15);
      point(xPos + 25, yPos + 25);
    }
    else if (dSide == 3)
    {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
    }
    else if (dSide == 4)
    {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    }
    else if (dSide == 5)
    {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    }
    else if (dSide == 6)
    {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 10 , yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
    }
	}

	void display() {
		//your code here
    strokeWeight(2);
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    rect(xPos, yPos, 50, 50, 5);
    dSide = (int)(Math.random()*6+1);
    if (dSide == 1) {
      strokeWeight(6);
      point(xPos + 25, yPos + 25);
    } else if (dSide == 2) {
      strokeWeight(6);
      point(xPos + 15, yPos + 15);
      point(xPos + 35, yPos + 35);
    } else if (dSide == 3) {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 4) {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 5) {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 6) {
      strokeWeight(6);
      point(xPos + 10, yPos + 10);
      point(xPos + 10 , yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
    }
  }
}
