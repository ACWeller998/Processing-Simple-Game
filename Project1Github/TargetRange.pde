//Target Range game.
ArrayList<target> targets = new ArrayList<target>();
points points = new points();


void setup(){
  size(1000,500);
  frameRate(30);
  points.displayPoints();
}


void draw(){
  background(200);
  body body = new body(55,200,50);
  
  
  points.displayPoints();
  checkTargets();
  mouseCursorX();
}






void mouseCursorX(){
  
  line(mouseX-15,mouseY,mouseX+15,mouseY);
  line(mouseX,mouseY-15,mouseX,mouseY+15);
  
  //pushMatrix();
  //text("X: " + mouseX,mouseX,mouseY);
  //text("Y: " + mouseY,mouseX,mouseY+10);
  //popMatrix();
}

void generateTargets(int targetNum){
  
  for(int i = 0 ; i <= targetNum ; i ++){
    targets.add(new target());
   
  }
  

}

void checkTargets(){
   if(targets.size() == 0){
     generateTargets(5);

 }  
  for(int i = 0 ; i < targets.size(); i++){
    targets.get(i).displayTarget();
    if(targets.get(i).getLife() < 1){
      targets.remove(i);
    } 
  }
}

void mouseClicked(){
  shootTarget();
  checkTargets();
  System.out.println("PEWPEW");
  points.displayPoints();
}

void shootTarget(){
  int mouseXpos = mouseX;
  int mouseYpos = mouseY;
  int bestMatchIter = 0;
  int bestDiffX = 999999;
  int bestDiffY = 999999;
  for(int i = 0; i < targets.size(); i++){
    int targX = targets.get(i).getX();
    int targY = targets.get(i).getY();
    
    int xDiff = mouseXpos - targX;
    int yDiff = mouseYpos - targY;
    
    
    if(xDiff < bestDiffX && yDiff < bestDiffY){
      bestDiffX = xDiff;
      bestDiffY = yDiff;
      bestMatchIter = i;
      //System.out.println("Best Match : " + i);
      //System.out.println("X: " + targX + " " + "Y: " + targY);
      //System.out.println("XDiff: " + xDiff + " " + "YDiff: " + yDiff);
      //This function is working exactly as intended.
    } 
    
  }
  
  targets.get(bestMatchIter).setLife(0);
  points.addPoints();
  points.updatePoints();
}
