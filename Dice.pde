int count = 0;

void setup()
{
  background(224, 224, 224);
  size(500, 500);
  noLoop();
}
void draw()
{
  for (int x = 50; x < 450; x += 50) {
    for (int y = 50; y < 350; y+= 50) {
      new Die(x, y).show();
      new Die(x, y).roll(); 
    }
  }  
  fill(0, 204, 0);
  rect(106, 375, count, 75, 10, 0, 0, 10);
  fill(32, 32, 32);
  rect(106 + count, 375, 288 - count, 75, 0, 10, 10, 0);
  textSize(15);
  text("Count: " + str(count), 106, 412); 
}
void mousePressed()
{
  count = 0;
  redraw();

}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, roll;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    roll = (int) (Math.random() * 6) + 1; 
    count += roll;

    fill(0);
    if (roll == 1) {
      ellipse(myX + 20, myY + 20, 7, 7);
  }
    else if (roll == 2) {
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX + 30, myY + 10, 7, 7);
    }
    else if (roll == 3) {
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX + 30, myY + 10, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
    }
    else if (roll == 4) {
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX + 30, myY + 10, 7, 7);
      ellipse(myX + 10, myY + 10, 7, 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    }
    else if (roll == 5) {
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX + 30, myY + 10, 7, 7);
      ellipse(myX + 10, myY + 10, 7, 7);
      ellipse(myX + 30, myY + 30, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
    }
    else if (roll == 6) {
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX + 30, myY + 10, 7, 7);
      ellipse(myX + 10, myY + 10, 7, 7);
      ellipse(myX + 30, myY + 30, 7, 7);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);      
    }
    
  }
  void show()
  {
    
    fill((int)(Math.random() * 350), (int)(Math.random() * 350), (int)(Math.random() * 350));
    noStroke();
    rect(myX, myY, 40, 40, 23, 23, 23, 23);
  }
}
   
    
