class Text{
  float x,y;
  Text(){
    instruct = true;
    x = 550;
    y = 400;
  }//Text Constructor
  
  void gameOver(){
    textSize(50);
    fill(0);
    text("Game over", 315,200);
    if(barriersBroken == 1){
      text("You hit " + barriersBroken + " cup",280,300);
    }//if = 1
    else if(barriersBroken <10) {
      text("You hit " + barriersBroken + " cups",280,300);
    }//else
    else {
      text("You hit " + barriersBroken + " cups!",280,300);
    }//else
  }//Game over
  
  void instructions(){
    textSize(30);
    fill(0);
    text("Welcome to Fratty Bird",x,y-50);
    text("Arrow keys to move",x,y);
    text("Spacebar to throw",x,y+50);
    x-=colSpeed;
    if(x == -300){
      instruct = false;
    }//if
  }//instructions
  
}//Text class
