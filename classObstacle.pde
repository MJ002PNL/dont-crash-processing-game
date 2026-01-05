PImage obstacleImage;

class Obstacle
{
  float x,y;
  float speedX, speedY;
  float radius = 25;
  
  Obstacle(float startX, float startY) {
   
    x = startX;
    y = startY;
    
    speedX = 4;
    speedY = 4;
  }
  
 void move(){
   x += speedX;
   y += speedY;
   
   if (x < 0 || x > width) {
     speedX *= -1;
   }
   if (y < 0 || y > height) {
     speedY *= -1;
   }
   
   if (keyPressed) {
     if (keyCode == UP) y -= 5;
     if (keyCode == DOWN) y += 5;
     if (keyCode == LEFT) x += 5;
     if (keyCode == RIGHT) x -= 5;
     
   }
 }
 
 void display(){
   imageMode(CENTER);
   image(obstacleImage, x,y, 50,55);
 }
 
 boolean checkCollision(Player p) {
   float distance = dist(x,y,p.x,p.y);
   
   if (distance < (radius + p.radius)) {
     return true;
   }
   return false;
 }
 
}
