public PImage img;
Column myCol;
House myHouse;
Ball myBall;
Text myText;
public int houseWid,houseHei,roofHei,ballX,ballY;
public int barriersBroken;
boolean jump, ready;
public boolean alive, fire,instruct;
public float colSpeed;
int counter;
public int houseXpos, houseYpos;
boolean up,down,left,right;
boolean[] barrier = new boolean[8];
public int[] posData = new int[8];
public int[] spaceData = new int[8];
void setup(){
  size(900,500);
  frameRate(360);
  img = loadImage("DTD.png");
  alive = true;
  jump = false;
  myCol = new Column();
  myHouse = new House();
  myBall = new Ball();
  myText = new Text();
  counter = 0;
}//setup

void draw(){
  background(49,233,255);
  if(alive){
    if(instruct){
      myText.instructions();
    }//if instruct
    myCol.updateCol();
    myCol.drawCol();
    myCol.drawBarriers();
    myCol.collisionDetector();
    myHouse.housePosCheck();
    myHouse.drawHouse();
    if(fire){
      myBall.drawBall();
      myBall.updateBall();
    }//if fire
    if (fire == false){
      myBall.updateBallStart();
    }// if update start
  }//if alive
  else
  {
    myText.gameOver();
  }//else
    
}////draw


 void keyPressed() {
  if (key == CODED){
    //if (key == ' '){
    //println("hey");
  //}////if spacebar
    if(keyCode == UP){
      up = true;
    }//if
    if(keyCode == DOWN){
      down = true;
    }//if
    if(keyCode == LEFT){
      left = true;
    }//if
    if(keyCode == RIGHT){
      right = true;
    }//if
  }//if
  if (key == ' '){
    fire = true;
  }//if spacebar
 }//keyPressed
  
  void keyReleased(){
    if(key==CODED){
      if(keyCode==UP){
        up = false;
      }//if
      if(keyCode==DOWN){
        down = false;
      }//if
      if(keyCode==RIGHT){
        right = false;
      }//if
      if(keyCode==LEFT){
        left = false;
      }//if
    }//if
  }//key released
      
      
