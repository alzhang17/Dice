int sum = 0;

void setup()
{
  size(300,300);
  noLoop();
}
void draw()
{
  
  background(0);
  for(int x = 0; x <= 5; x++)
    for(int y = 0; y <= 5; y++){
      Die one = new Die(50+30*x,50+30*y);
      one.show();
      one.roll();
    }
   // System.out.println(sum);
    fill(255);
    text("The sum of the dice is " + sum, 150, 250);  
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  int myX, myY, rollNum;//variable declarations here
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //variable initializations here
}
  void roll()
  {
    fill(0);
    if(rollNum == 1){
      circle(myX + 13, myY + 13, 7);
      sum+=1;//Center
    }else if(rollNum == 2){
      circle(myX + 6, myY + 6, 7); //Top left
      circle(myX + 20, myY + 20, 7); //Top right
      sum+=2;
    }else if (rollNum == 3){
      circle(myX + 13, myY + 13, 7); //Center
      circle(myX + 20, myY + 6, 7); //Top Right
      circle(myX + 6, myY + 20, 7); //Bottom left
      sum+=3;
    }else if(rollNum == 4){
      circle(myX + 6, myY + 6, 7); //Top Left
      circle(myX + 20, myY + 6, 7); // Top right
      circle(myX + 6, myY + 20, 7); // Bottom left
      circle(myX + 20, myY + 20, 7); // Bottom right
      sum+=4;
    }else if (rollNum == 5){
      circle(myX + 6, myY + 6, 7); //Top Left
      circle(myX + 20, myY + 6, 7); // Top right
      circle(myX + 6, myY + 20, 7); // Bottom left
      circle(myX + 20, myY + 20, 7); // Bottom right
      circle(myX + 13, myY + 13, 7); //Center
      sum+=5;
    }else{
      circle(myX + 6, myY + 6, 7); //Top Left
      circle(myX + 20, myY + 6, 7); // Top right
      circle(myX + 6, myY + 20, 7); // Bottom left
      circle(myX + 20, myY + 20, 7); // Bottom right
      circle(myX + 6, myY + 13, 7); //Middle Left
      circle(myX + 20, myY + 13, 7); //Middle right
      sum+=6;
    }    //your code here
  }
  void show()
  {
    fill(255,255,255);
    square(myX, myY, 25);
    rollNum = (int)(Math.random()*6)+1;
   // System.out.println(rollNum);
    //your code here
  }
}
