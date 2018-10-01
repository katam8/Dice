int color1 = (int)(Math.random()*255);
int color2 = (int)(Math.random()*255);
int color3 = (int)(Math.random()*255);

int dotClr1 = 255 - color1;
int dotClr2 = 255 - color2;
int dotClr3 = 255 - color3;

int dSum = 0;

void setup()
{
  size(500, 600);
  textAlign(CENTER, CENTER);
	noLoop();
}

void draw()
{
	//your code here
  background(255);
  for(int y = 15; y < 470; y = y + 60)
  { 
    for(int x = 15; x < 470; x = x + 60)
    {
      Die kam = new Die(x, y);
      kam.display();
    }
  }
  textSize(35);
  text("Sum of dice rolls: " + dSum, width/2, 525);
}

void mousePressed()
{
  dSum = 0;
  color1 = (int)(Math.random()*255);
  color2 = (int)(Math.random()*255);
  color3 = (int)(Math.random()*255);
  dotClr1 = 255 - color1;
  dotClr2 = 255 - color2;
  dotClr3 = 255 - color3;
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
    stroke(dotClr1, dotClr2, dotClr3);
    strokeWeight(10);
		//your code here
    
	}

	void display() {
		//your code here
    noStroke();
    fill(color1, color2, color3);
    rect(xPos, yPos, 50, 50, 5);
    stroke(dotClr1, dotClr2, dotClr3);
    if (dSide == 1)
    {
      point(xPos + 25, yPos + 25);
      dSum++;
    } 
    else if (dSide == 2)
    {
      point(xPos + 15, yPos + 15);
      point(xPos + 35, yPos + 35);
      dSum = dSum + 2;
    }
    else if (dSide == 3)
    {
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 3;
    }
    else if (dSide == 4)
    {
      point(xPos + 10, yPos + 10);
      point(xPos + 40, yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 4;
    }
    else if (dSide == 5)
    {
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 5;
    }
    else if (dSide == 6)
    {
      point(xPos + 10, yPos + 10);
      point(xPos + 10 , yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 6;
    }
  }
}
