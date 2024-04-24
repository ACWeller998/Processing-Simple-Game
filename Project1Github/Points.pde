class points{
  
  int points;
  String pointsText = "Points: ";
  

  
  
  public void displayPoints(){ 
    scale(2);
    text(pointsText,50,50);
    resetMatrix();
  }
  
  public void updatePoints(){
    pointsText = "Points: " + String.valueOf(points);
  }
  
  
  public void addPoints(){
    points = points + 10;
  }
  
}
