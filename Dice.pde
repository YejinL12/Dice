int total = 0;
void setup()
{
  noLoop();
  size (720, 700);
}
void draw()
{ 
  background(0);
  for(int x = 0; x <= 660; x = x + 60){
    for(int y =0; y <= 550; y = y + 60){  
      Die bob = new Die (x, y);
        bob.show();
        bob.roll();
    }
  }
  textSize(30);
  textAlign(CENTER);
  fill(255);
  text("Total = " + total, 360, 650);
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die //models one single dice cube
{
  int myX, myY, rollNum;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    rollNum = 0;
  }//end of constructor
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
    fill(255);
    strokeWeight(1);
    if (rollNum ==1) {
      ellipse(myX + 25, myY + 25, 8, 8);
      total = total + 1;
    }
    else if(rollNum == 2){
      ellipse(myX + 15, myY + 15, 8, 8);
      ellipse(myX + 35, myY + 35, 8, 8);
      total = total + 2;
  }
  else if(rollNum == 3){
      ellipse(myX + 15, myY + 15, 8, 8);
      ellipse(myX + 25, myY + 25, 8, 8);
      ellipse(myX + 35, myY + 35, 8, 8);
      total = total + 3;
  }
  else if(rollNum == 4){
      ellipse(myX + 15, myY + 15, 8, 8);
      ellipse(myX + 35, myY + 15, 8, 8);
      ellipse(myX + 15, myY + 35, 8, 8);
      ellipse(myX + 35, myY + 35, 8, 8);
      total = total + 4;
  }
    else if(rollNum == 5){
      ellipse(myX + 15, myY + 15, 8, 8);
      ellipse(myX + 35, myY + 15, 8, 8);
      ellipse(myX + 15, myY + 35, 8, 8);
      ellipse(myX + 35, myY + 35, 8, 8);
      ellipse(myX + 25, myY + 25, 8, 8);
      total = total + 5;
  }
      else if(rollNum == 6){
      ellipse(myX + 15, myY + 15, 8, 8);
      ellipse(myX + 15, myY + 25, 8, 8);
      ellipse(myX + 15, myY + 35, 8, 8);
      ellipse(myX + 35, myY + 15, 8, 8);
      ellipse(myX + 35, myY + 25, 8, 8);
      ellipse(myX + 35, myY + 35, 8, 8);
      total = total + 6;
  }
  }
  void show()
  {
    int r, g, b;
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
    stroke(255);
    strokeWeight(3);
    
    if (myX <= 100){ 
    fill(255, 0, b);
    rect(myX, myY, 50, 50, 5);
    }
    else if(myX <=200){
      fill(255 ,160 ,0+b);
      rect(myX, myY, 50, 50, 5);
  }
     else if(myX <=300){
     fill(255,246,b);
     rect(myX, myY, 50, 50, 5);
  }
  else if(myX <= 450){
    fill(0,255,b); 
     rect(myX, myY, 50, 50, 5);
  }
  else if(myX <= 550){
     fill(0,g,255);
     rect(myX, myY, 50, 50, 5);
  }
  else{
    fill(122+r, 0, 255);
    rect(myX, myY, 50, 50, 5);
  }
}
}
