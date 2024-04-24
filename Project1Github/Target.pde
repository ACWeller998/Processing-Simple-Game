//The target should move randomly in a set area. start with x = 700 - 900 and y will be full length

class target{
 int fpsmult = 30;
 int life; //How long the target should last if it isn't hit. 
 int spawnX,spawnY; 
  
public target(){
  randomSpawnPoint();
  life = int(random(1,10)*fpsmult);
  displayTarget();
}
  
  
  public void displayTarget(){
    
    if(life > 0){
      circle(spawnX,spawnY,50);
      life--;
    }
  }
  
 
  
  private void randomSpawnPoint(){
    spawnX = int(random(700,900));
    spawnY = int(random(100,400));
  }
  
  public int getLife(){
    return life;
  }
  
  public void setLife(int newLife){
    life = newLife;
  }
  
  public int getX(){
    return spawnX;
  }
  
  public int getY(){
    return spawnY;
  }
}
