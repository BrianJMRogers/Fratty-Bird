class Column{
  int xpos;
  //float colSpeed;
  float xpos1A, xpos1B, xpos2A, xpos2B; 
  float xpos3A, xpos3B, xpos4A, xpos4B;
  int colWid, blocker;
  int colSpace1A, colSpace1B, colSpace2A, colSpace2B;
  int colSpace3A, colSpace3B, colSpace4A, colSpace4B;
  boolean col1A,col1B, col2A,col2B;
  boolean col3A,col3B, col4A,col4B;
  boolean col1ABarrier,col1BBarrier, col2ABarrier,col2BBarrier;
  boolean col3ABarrier,col3BBarrier, col4ABarrier,col4BBarrier;
  boolean colBroken;
  int A1pos,B1pos,A2pos,B2pos,A3pos,B3pos,A4pos,B4pos;
  boolean[] barrierBooleans = new boolean[8];
  
  int n,m;
  boolean p;
  int a,b,c,d,e,f,g,h;
  Column(){
    xpos = width;
    colWid = width/15;
    colSpeed = 0.5;
    blocker = 10; //barrier width
    colBroken = false;
    n = 0;
    m = 0;
    p = true;
    col1ABarrier = true;
    col1BBarrier = true;
    col2ABarrier = true;
    col2BBarrier = true;
    col3ABarrier = true;
    col3BBarrier = true;
    col4ABarrier = true;
    col4BBarrier = true;
    
    barrierBooleans[0] = col1ABarrier;
    barrierBooleans[1] = col1BBarrier;
    barrierBooleans[2] = col2ABarrier;
    barrierBooleans[3] = col2BBarrier;
    barrierBooleans[4] = col3ABarrier;
    barrierBooleans[5] = col3BBarrier;
    barrierBooleans[6] = col4ABarrier;
    barrierBooleans[7] = col4BBarrier;
    
    
    //col1
    xpos1A = width;
    xpos1B = width;
    colSpace1A = (int)(Math.random()* height);
    if(colSpace1A<100){
      colSpace1A+=100;
    }//if
    if(colSpace1A>(height-100)){
      colSpace1A-=100;
    }//if
    colSpace1B = (int)(Math.random()* height);
    if(colSpace1B<100){
      colSpace1B+=100;
    }//if
    if(colSpace1B>(height-100)){
      colSpace1B-=100;
    }//if
    col1A = true;
    col1B = false;
    
    //col2
    xpos2A = width + width/4;
    xpos2B = width;
    colSpace2A = (int)(Math.random()* height);
    if(colSpace2A<100){
      colSpace2A+=100;
    }//if
    if(colSpace2A>(height-100)){
      colSpace2A-=100;
    }//if
    colSpace2B = (int)(Math.random()* height);
    if(colSpace2B<100){
      colSpace2B+=100;
    }//if
    if(colSpace2B>(height-100)){
      colSpace2B-=100;
    }//if
    col2A = true;
    col2B = false;
    
    //col3
    xpos3A = width + width/2;
    xpos3B = width;
    colSpace3A = (int)(Math.random()* height);
    if(colSpace3A<100){
      colSpace3A+=100;
    }//if
    if(colSpace3A>(height-100)){
      colSpace3A-=100;
    }//if
    colSpace3B = (int)(Math.random()* height);
    if(colSpace3B<100){
      colSpace3B+=100;
    }//if
    if(colSpace3B>(height-100)){
      colSpace3B-=100;
    }//if
    col3A = true;
    col3B = false;
    
    //col4
    xpos4A = width + 3*width/4;
    xpos4B = width;
    colSpace4A = (int)(Math.random()* height);
    if(colSpace4A<100){
      colSpace4A+=100;
    }//if
    if(colSpace4A>(height-100)){
      colSpace4A-=100;
    }//if
    colSpace4B = (int)(Math.random()* height);
    if(colSpace4B<100){
      colSpace4B+=100;
    }//if
    if(colSpace4B>(height-100)){
      colSpace4B-=100;
    }//if
    col4A = true;
    col4B = false;

    
  }//column constructor
  
  void drawCol(){
    // col 1 ******************************************
    
    //col1A
    fill(255,0,0);
    if (col1A){
      //cups
      rect(xpos1A,0,width/15,colSpace1A-height/10);
      rect(xpos1A,colSpace1A+height/10,width/15,height);
      //rims
      fill(255);
      rect(xpos1A-3,colSpace1A-height/10-5,width/15+6,5);
      rect(xpos1A-3,colSpace1A+height/10+5,width/15+6,-4);
    }//if
    
    //col1B
    fill(255,0,0);
    if (col1B){
      //cups
      rect(xpos1B,0,width/15,colSpace1B-height/10);
      rect(xpos1B,colSpace1B+height/10,width/15,height);
      //rims
      fill(255);
      rect(xpos1B-3,colSpace1B-height/10-5,width/15+6,5);
      rect(xpos1B-3,colSpace1B+height/10+5,width/15+6,-5);
    }//if
    
    //colFill
    
    
    spaceData[0] = colSpace1A;
    spaceData[1] = colSpace1B;
    
    
    
    
    // col 2 ******************************************
    
    //col2A
    fill(255,0,0);
    if (col2A){
      //cups
      rect(xpos2A,0,width/15,colSpace2A-height/10);
      rect(xpos2A,colSpace2A+height/10,width/15,height);
      //rims
      fill(255);
      rect(xpos2A-3,colSpace2A-height/10-5,width/15+6,5);
      rect(xpos2A-3,colSpace2A+height/10+5,width/15+6,-5);
    }//if
    
    //col2B
    fill(255,0,0);
    if (col2B){
      //cups
      rect(xpos2B,0,width/15,colSpace2B-height/10);
      rect(xpos2B,colSpace2B+height/10,width/15,height);
      //rims
      fill(255);
      rect(xpos2B-3,colSpace2B-height/10-5,width/15+6,5);
      rect(xpos2B-3,colSpace2B+height/10+5,width/15+6,-5);
      
    }//if
    
    //colFill
    
    
    spaceData[2] = colSpace2A;
    spaceData[3] = colSpace2B;
    
    
    
    //col 3 ******************************************
    
    //col3A
    fill(255,0,0);
    if (col3A){
     //cups
     rect(xpos3A,0,width/15,colSpace3A-height/10);
     rect(xpos3A,colSpace3A+height/10,width/15,height);
     //rims
     fill(255);
     rect(xpos3A-3,colSpace3A-height/10-5,width/15+6,5);
     rect(xpos3A-3,colSpace3A+height/10+5,width/15+6,-5);
    }//if
    
    //col3B
    fill(255,0,0);
    if (col3B){
     //cups
     rect(xpos3B,0,width/15,colSpace3B-height/10);
     rect(xpos3B,colSpace3B+height/10,width/15,height);
     //rims
     fill(255);
     rect(xpos3B-3,colSpace3B-height/10-5,width/15+6,5);
     rect(xpos3B-3,colSpace3B+height/10+5,width/15+6,-5);
    }//if
    
    //colFill
    
    
    spaceData[4] = colSpace3A;
    spaceData[5] = colSpace3B;
    
    
    //col 4 ******************************************
    
    //col4A
    fill(255,0,0);
    if (col4A){
     //cups
     rect(xpos4A,0,width/15,colSpace4A-height/10);
     rect(xpos4A,colSpace4A+height/10,width/15,height);
     //rims
     fill(255);
     rect(xpos4A-3,colSpace4A-height/10-5,width/15+6,5);
     rect(xpos4A-3,colSpace4A+height/10+5,width/15+6,-5);
    }//if
    
    //col4B
    fill(255,0,0);
    if (col4B){
     //cups
     rect(xpos4B,0,width/15,colSpace4B-height/10);
     rect(xpos4B,colSpace4B+height/10,width/15,height);
     //rims
     fill(255);  
     rect(xpos4B-3,colSpace4B-height/10-5,width/15+6,5);
     rect(xpos4B-3,colSpace4B+height/10+5,width/15+6,-5);
    }//if
    
    //colFill
    
    spaceData[6] = colSpace4A;
    spaceData[7] = colSpace4B;
    
    //Array data **********************************************
    A1pos = (int)xpos1A;
    B1pos = (int)xpos1B;
    
    A2pos = (int)xpos2A;
    B2pos = (int)xpos2B;
    
    A3pos = (int)xpos3A;
    B3pos = (int)xpos3B;
    
    A4pos = (int)xpos4A;
    B4pos = (int)xpos4B;
    
    posData[0] = A1pos;
    posData[1] = B1pos;
    posData[2] = A2pos;
    posData[3] = B2pos;
    posData[4] = A3pos;
    posData[5] = B3pos;
    posData[6] = A4pos;
    posData[7] = B4pos;
    
    
    
    
    
    
    

    
  }//draw Col
  
  
  void collisionDetector(){
    for(int i = 0; i<posData.length; i++){
     n = posData[i];
     m = spaceData[i];
     p = barrierBooleans[i];
     if(p){
       if(ballX > n && ballX < n+15 && ballY > m-height/10 && ballY < m+height/10){
         fire = false;
         barrierBooleans[i] = false;
         barriersBroken +=1;
       } else if(ballX>n && ballX<n+15){
         fire = false;
       }//else if
     }//if p
      if (p==false) {
       if(ballX > n && ballX < n + 10 && (ballY < m-height/10 || ballY > m+height/10)){
         //println("hello");
         fire = false;
       }//if
     }//else
     
     
     if(p){
       if(houseXpos + houseWid>n){
         alive = false;
       }//if
       
     } else {
       if (houseXpos + houseWid>n && houseXpos<n+colWid && houseYpos+roofHei < m-height/10){
         alive = false;
       }//if
       if (houseXpos+houseWid>n && houseXpos<n+colWid && houseYpos +houseHei > m+height/10){
         alive = false;
       }//if
     }//else 
    if(houseXpos+houseWid<0){
       alive = false;
    }//if  
    if(houseYpos+houseHei<0){
      alive = false;
    }//if  
    if(houseYpos+roofHei>height){
      alive = false;
    }//if  
    }//for
  }//collisionDetector
  
  
  
  
  
  
  void updateCol(){
    // col 1 ******************************************
    if(col1A){
      xpos1A-=colSpeed;
    }//if
    if(col1B){
      xpos1B-=colSpeed;
    }//if
    if(xpos1A<0){
      col1B = true;
    }//if
    if (xpos1A+colWid<0){
      col1A = false;
      barrierBooleans[0] = true;
      xpos1A = xpos;
      colSpace1A = (int)(Math.random()* height);
      if(colSpace1A<50){
        colSpace1A+=50;
      }//if
      if(colSpace1A>(height-50)){
        colSpace1A-=50;
      }//if
    }//if
    if(xpos1B<0){
      col1A = true;
    }//if
    if (xpos1B+colWid<0){
      col1B = false;
      barrierBooleans[1] = true;
      xpos1B = xpos;
      colSpace1B = (int)(Math.random()* height);
      if(colSpace1B<50){
        colSpace1B+=50;
      }//if
      if(colSpace1B>(height-50)){
        colSpace1B-=50;
      }//if
    }//if
    
    // col 2 ******************************************
    if(col2A){
      xpos2A-=colSpeed;
    }//if
    if(col2B){
      xpos2B-=colSpeed;
    }//if
    if(xpos2A<0){
      col2B = true;
    }//if
    if (xpos2A+colWid<0){
      col2A = false;
      barrierBooleans[2] = true;
      xpos2A = width;
      colSpace2A = (int)(Math.random()* height);
      if(colSpace2A<100){
        colSpace2A+=100;
      }//if
      if(colSpace2A>(height-100)){
        colSpace2A-=100;
      }//if
    }//if
    if(xpos2B<0){
      col2A = true;
    }//if
    if (xpos2B+colWid<0){
      col2B = false;
      barrierBooleans[3] = true;
      xpos2B = width;
      colSpace2B = (int)(Math.random()* height);
      if(colSpace2B<100){
        colSpace2B+=100;
      }//if
      if(colSpace2B>(height-100)){
        colSpace2B-=100;
      }//if
    }//if
    
    //col 3 ******************************************
    if(col3A){
     xpos3A-=colSpeed;
    }//if
    if(col3B){
     xpos3B-=colSpeed;
    }//if
    if(xpos3A<0){
     col3B = true;
    }//if
    if (xpos3A+colWid<0){
     col3A = false;
     barrierBooleans[4] = true;
     xpos3A = width;
     colSpace3A = (int)(Math.random()* height);
     if(colSpace3A<100){
       
       colSpace3A+=100;
     }//if
     if(colSpace3A>(height-100)){
       colSpace3A-=100;
     }//if
    }//if
    if(xpos3B<0){
     col3A = true;
    }//if
    if (xpos3B+colWid<0){
      col3B = false;
      barrierBooleans[5] = true;
      xpos3B = width;
      colSpace3B = (int)(Math.random()* height);
      if(colSpace3B<100){
         colSpace3B+=100;
      }//if
      if(colSpace3B>(height-100)){
        colSpace3B-=100;
      }//if
    }//if
    
    //col 3 ******************************************
    if(col4A){
     xpos4A-=colSpeed;
    }//if
    if(col4B){
     xpos4B-=colSpeed;
    }//if
    if(xpos4A<0){
     col4B = true;
    }//if
    if (xpos4A+colWid<0){
     col4A = false;
     barrierBooleans[6] = true;
     xpos4A = width;
     colSpace4A = (int)(Math.random()* height);
     if(colSpace4A<100){
       colSpace4A+=100;
     }//if
     if(colSpace4A>(height-100)){
       colSpace4A-=100;
     }//if
    }//if
    if(xpos4B<0){
     col4A = true;
    }//if
    if (xpos4B+colWid<0){
     col4B = false;
     colSpeed *=1.05;
     barrierBooleans[7] = true;
     xpos4B = width;
     colSpace4B = (int)(Math.random()* height);
     if(colSpace4B<100){
       colSpace4B+=100;
     }//if
     if(colSpace4B>(height-100)){
       colSpace4B-=100;
     }//if
    }//if
  }//updateCol
  
  void drawBarriers(){
    fill(255);
    
    
    //1A
    if(barrierBooleans[0]){
      rect(xpos1A,colSpace1A-height/10+2,blocker,height/5-4);
      fill(255,0,0);
      rect(xpos1A+blocker,colSpace1A-height/10+4,30,height/5-8);
      rect(xpos1A+blocker+30,colSpace1A-height/10+6,10,height/5-12);
      rect(xpos1A+blocker+30+10,colSpace1A-height/10+7,10,height/5-14);
      rect(xpos1A+blocker+30+10+10,colSpace1A-height/10+8,10,height/5-16);
      rect(xpos1A+blocker+30+10+10+10,colSpace1A-height/10+10,50,height/5-20);
    }//if 1A  
    //1B
    if(barrierBooleans[1]){
      fill(255);
      rect(xpos1B,colSpace1B-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos1B+blocker,colSpace1B-height/10+4,30,height/5-8);
      rect(xpos1B+blocker+30,colSpace1B-height/10+6,10,height/5-12);
      rect(xpos1B+blocker+30+10,colSpace1B-height/10+7,10,height/5-14);
      rect(xpos1B+blocker+30+10+10,colSpace1B-height/10+8,10,height/5-16);
      rect(xpos1B+blocker+30+10+10+10,colSpace1B-height/10+10,50,height/5-20);
      
    }//if1B
    
    
    //2A
    if(barrierBooleans[2]){
      fill(255);
      rect(xpos2A,colSpace2A-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos2A+blocker,colSpace2A-height/10+4,30,height/5-8);
      rect(xpos2A+blocker+30,colSpace2A-height/10+6,10,height/5-12);
      rect(xpos2A+blocker+30+10,colSpace2A-height/10+7,10,height/5-14);
      rect(xpos2A+blocker+30+10+10,colSpace2A-height/10+8,10,height/5-16);
      rect(xpos2A+blocker+30+10+10+10,colSpace2A-height/10+10,50,height/5-20);
    }//if2A
    //2B
    if(barrierBooleans[3]){
      fill(255);
      rect(xpos2B,colSpace2B-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos2B+blocker,colSpace2B-height/10+4,30,height/5-8);
      rect(xpos2B+blocker+30,colSpace2B-height/10+6,10,height/5-12);
      rect(xpos2B+blocker+30+10,colSpace2B-height/10+7,10,height/5-14);
      rect(xpos2B+blocker+30+10+10,colSpace2B-height/10+8,10,height/5-16);
      rect(xpos2B+blocker+30+10+10+10,colSpace2B-height/10+10,50,height/5-20);
    }//if2B
    
    
    //3A
    if(barrierBooleans[4]){
      fill(255);
      rect(xpos3A,colSpace3A-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos3A+blocker,colSpace3A-height/10+4,30,height/5-8);
      rect(xpos3A+blocker+30,colSpace3A-height/10+6,10,height/5-12);
      rect(xpos3A+blocker+30+10,colSpace3A-height/10+7,10,height/5-14);
      rect(xpos3A+blocker+30+10+10,colSpace3A-height/10+8,10,height/5-16);
      rect(xpos3A+blocker+30+10+10+10,colSpace3A-height/10+10,50,height/5-20);
    }//if3A
    
    //3B
    if(barrierBooleans[5]){
      fill(255);
      rect(xpos3B,colSpace3B-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos3B+blocker,colSpace3B-height/10+4,30,height/5-8);
      rect(xpos3B+blocker+30,colSpace3B-height/10+6,10,height/5-12);
      rect(xpos3B+blocker+30+10,colSpace3B-height/10+7,10,height/5-14);
      rect(xpos3B+blocker+30+10+10,colSpace3B-height/10+8,10,height/5-16);
      rect(xpos3B+blocker+30+10+10+10,colSpace3B-height/10+10,50,height/5-20);
    }//if 3B
    
    
    //4A
    if(barrierBooleans[6]){
      fill(255);
      rect(xpos4A,colSpace4A-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos4A+blocker,colSpace4A-height/10+4,30,height/5-8);
      rect(xpos4A+blocker+30,colSpace4A-height/10+6,10,height/5-12);
      rect(xpos4A+blocker+30+10,colSpace4A-height/10+7,10,height/5-14);
      rect(xpos4A+blocker+30+10+10,colSpace4A-height/10+8,10,height/5-16);
      rect(xpos4A+blocker+30+10+10+10,colSpace4A-height/10+10,50,height/5-20);
    }//if 4A
    //4B
    if(barrierBooleans[7]){
      fill(255);
      rect(xpos4B,colSpace4B-height/10,blocker,height/5);
      fill(255,0,0);
      rect(xpos4B+blocker,colSpace4B-height/10+4,30,height/5-8);
      rect(xpos4B+blocker+30,colSpace4B-height/10+6,10,height/5-12);
      rect(xpos4B+blocker+30+10,colSpace4B-height/10+7,10,height/5-14);
      rect(xpos4B+blocker+30+10+10,colSpace4B-height/10+8,10,height/5-16);
      rect(xpos4B+blocker+30+10+10+10,colSpace4B-height/10+10,50,height/5-20);
    }//if 4B
    
  }//void draw barriers
}//Column class
