   
class body{
  float x;
  float y;
  float size;
  
  public body(float x,float y, float size){
    this.x = x;
    this.y = y;
    this.size = size;
    
    head(x,y,size);
    torso();
    
    rightArm();
    leftArm();
    leftLeg();
    rightLeg();
    
    gun();
  }
  
  private void head(float x, float y, float size){
    circle(x,y,size);
  }
  
  private void torso(){
    rect(x-32,y+25,65,115);
  }
  
  private void leftArm(){
    pushMatrix();
    translate(x-30,y+50);
    rotate(radians(-80));
    rect(0,0,20,140);
    
    popMatrix();
  }
  
  private void rightArm(){
    pushMatrix();
    translate(x+20,y+40);
    rotate(radians(-35));
    rect(0,0,20,70);
    resetMatrix();
    translate(x+60,y+100);
    rotate(radians(-120));
    rect(0,0,20,70);
    popMatrix();
  }
  
  private void leftLeg(){
    pushMatrix();
    translate(x-35,y+140);
    rect(0,0,20,60);
    resetMatrix();
    translate(x-35,y+200);
    rotate(radians(10));
    rect(0,0,20,60);
    
    popMatrix();
  }
  
  private void rightLeg(){
    pushMatrix();
    translate(x+20,y+140);
    rotate(radians(-5));
    rect(0,0,20,60);
    resetMatrix();
    translate(x+25,y+200);
    rotate(radians(25));
    rect(0,0,20,60);
    popMatrix();
    
  }
  
  private void gun(){
    pushMatrix();
    translate(x+100,y+45);
    rect(0,0,10,30);
    resetMatrix();
    translate(x+100,y+45);
    rect(0,0,60,12);
    popMatrix();
  }
  
}
