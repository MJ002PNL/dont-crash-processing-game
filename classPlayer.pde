PImage playerImage;

class Player {
  float x,y;
  float radius = 25;
  
  Player(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  

void display(){
 imageMode(CENTER);
 image(playerImage, x,y);
}
}
