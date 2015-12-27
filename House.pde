class House{
  int distRoofIsOverSide;
  House(){
    houseYpos = height/3;
    houseXpos = width/6;
    houseWid = 35;
    houseHei = 35;
    roofHei = -20;
    distRoofIsOverSide = 3;
    
    
  }//bird constructor
  
  void drawHouse(){
    pushMatrix();
    translate(houseXpos,houseYpos);
    
    fill(252,227,156);
    rect(0,0,houseWid,houseHei);
    fill(106,63,19);
    rect(7,houseHei,7,-14);
    fill(0,0,255);
    rect(houseWid-17,houseHei-14,13,8);
    fill(255);
    stroke(255);
    line(houseWid-17+(13/2),houseHei-14,houseWid-17+(13/2),houseHei-14+8);
    line(houseWid-17,houseHei-14+4,houseWid-17+13,houseHei-14+4);
    fill(106,12,240);
    stroke(0);
    beginShape();
    vertex(-distRoofIsOverSide,0);
    vertex((houseWid+1)/2,roofHei);
    vertex(distRoofIsOverSide+houseWid,0);
    vertex(-distRoofIsOverSide,0);
    endShape();
    pushMatrix();
    scale(0.08);
    image(img,35,50);
    popMatrix();
    popMatrix();
    
    //rect(birdXpos,birdYpos,birdWid,birdHei);

  }//drawBird
  
  void housePosCheck(){
    if(up){
      houseYpos -=1;
    }//if
    if(down){
      houseYpos +=1;
    }//if
    if(left){
      houseXpos -=1;
    }//if
    if(right){
      houseXpos +=1;
    }//if
    
  }//bird pos check
  
  
  
  
  
}//bird class
