int rollNum;
int sum =0;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(50);
  for(int y=15;y<=450;y=y+60)
  {
    for(int x=15;x<=450;x=x+60)
    {
      Die bob = new Die(x, y);
      bob.show();
      bob.roll();
      sum=sum+rollNum;
    }
  }
  
  fill(150,150,150,70);
  textSize(200);
  text(sum,80,300);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{

  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
  }
  void roll()
  {
    rollNum=(int)(Math.random()*6);
    if (rollNum==0)
    {
      //1
      fill(50);
      rect(myX+20, myY+20, 10, 10);
    } 
    else if (rollNum==1)
    {
      //2
      fill(50);
      rect(myX+35,myY+5, 10,10);
      rect(myX+5, myY+35, 10, 10);
    }
    else if (rollNum==2)
    {
      //3
      fill(50);
      rect(myX+20,myY+20,10,10);
      rect(myX+35,myY+5, 10,10);
      rect(myX+5, myY+35, 10, 10);
    }
    else if (rollNum==3)
    {
      //4
      fill(50);
      rect(myX+5,myY+5,10,10);
      rect(myX+35,myY+5,10,10);
      rect(myX+35,myY+35, 10,10);
      rect(myX+5, myY+35, 10, 10);
    }
    else if (rollNum==4)
    {
      //5
      fill(50);
      rect(myX+20,myY+20,10,10);
      rect(myX+5,myY+5,10,10);
      rect(myX+35,myY+5,10,10);
      rect(myX+35,myY+35, 10,10);
      rect(myX+5, myY+35, 10, 10);
    }
    else if (rollNum==5)
    {
      //6
      fill(50);
      rect(myX+5,myY+5,10,10);
      rect(myX+35,myY+5,10,10);
      rect(myX+35,myY+35, 10,10);
      rect(myX+5, myY+35, 10, 10);
      rect(myX+5,myY+20,10,10);
      rect(myX+35,myY+20,10,10);

    }
    
  }
  void show()
  {
    noStroke();
    fill(150,150,150,90);
    rect(myX, myY, 50, 50);
  }
}