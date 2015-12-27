class Ball{

  
  Ball(){
    ballX = (int)houseXpos + (int)houseWid;
    ballY = (int)houseYpos + (int)houseHei/2;
    
    
  }//Bullet constructor
  
  void drawBall(){
    fill(255);
    ellipse(ballX,ballY, 30,30);
  }//drawBullet
  
  void updateBallStart(){
    ballX = houseXpos + houseWid;
    ballY = houseYpos + houseHei/2;
  }//updateBulletStart
  
  void updateBall(){
    //if(fire && bullet
    ballX+=2;
    
  }//update Bullet
  
  
}//Bullet
