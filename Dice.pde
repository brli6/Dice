Die bob;
int randomNumber;
int x;
int y;
int sum;
void setup()
{
  size(490,650);
  noLoop();
}
void draw()
{
  background(0);
  for (int y = 10; y <= 490; y+=60)
  {
    for (int x = 10; x <= 490; x+=60)
    {
    Die bob = new Die(x,y);
    bob.show();
    sum = randomNumber+sum; // nothing in sum, and this line of code puts in a value into sum
    }
  }
  fill(255);
  textSize(25);
  text("Total = " + sum, 160, 600);
}
void mousePressed()
{  
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y) //constructor, initialize the variables
  {
    myX = x;
    myY= y;
    roll();
  }
void roll()
  {
    randomNumber= (int)((Math.random()*6)+1);
    //your code here (do math.random here and set it equal to a variable and use that below)
  }
  void show()
  {
    fill(((int)(Math.random()*100)+150),((int)(Math.random()*100)+150),((int)(Math.random()*100)+150));
    rect(myX,myY,50,50,15);
    fill(0);
    if (randomNumber == 1)
    //one
    {
    ellipse(25+myX,25+myY,8,8);
    }
    if (randomNumber == 2)
    //two
    {
      ellipse(15+myX,15+myY,8,8);
      ellipse(35+myX,35+myY,8,8);
    }
    if (randomNumber == 3)
    //three
    {
      ellipse(15+myX,15+myY,8,8);
      ellipse(35+myX,35+myY,8,8);
      ellipse(25+myX,25+myY,8,8);
    }
    if (randomNumber == 4)
    //four
    {
      ellipse(15+myX,15+myY,8,8);
      ellipse(35+myX,35+myY,8,8);
      ellipse(15+myX,35+myY,8,8);
      ellipse(35+myX,15+myY,8,8);
    }
    if (randomNumber == 5)
    //five
    {
      ellipse(15+myX,15+myY,8,8);
      ellipse(35+myX,35+myY,8,8);
      ellipse(15+myX,35+myY,8,8);
      ellipse(35+myX,15+myY,8,8);
      ellipse(25+myX,25+myY,8,8);
    }
    if (randomNumber == 6)
    //six
    {
    ellipse(15+myX,15+myY,8,8);
    ellipse(35+myX,35+myY,8,8);
    ellipse(15+myX,35+myY,8,8);
    ellipse(35+myX,15+myY,8,8);
    ellipse(15+myX,25+myY,8,8);
    ellipse(35+myX,25+myY,8,8);
    }
  }
}