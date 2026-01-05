PImage backgroundImage;
PImage keypressedImage;

Player player;
ArrayList<Obstacle> obstacles;
boolean gameOver = false;

int spawnInterval = 120;
int lastSpawnTime = 0;

void setup() {
  size(500,500);
  
 keypressedImage = loadImage("hellokitty2.png");
 keypressedImage.resize(60,65);
 
 backgroundImage = loadImage("bape.jpeg");
 
 playerImage = loadImage("hellokitty.png");
 playerImage.resize(50,55);
 
 obstacleImage = loadImage("babymilo.png");
 
   player = new Player(250,250);
   obstacles = new ArrayList<Obstacle>();
   
   for(int i = 0; i<5; i++){
     obstacles.add(new Obstacle(random(width),random(height)));
   }
}

void draw()
{
  if(gameOver) {
    background(137,207,240);
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255,0,0);
    text("GAME OVER!!", width/2, height/2);
    println("Game Over! hello kitty collided with baby milo");
    return;
  }
    
  image(backgroundImage, width/2, height/2, width, height);
  
  player.display();
  
  if(frameCount - lastSpawnTime > spawnInterval){
    obstacles.add(new Obstacle(random(width), random (height)));
    lastSpawnTime = frameCount;
  }

for(Obstacle o : obstacles) {
  o.move();
  o.display();
  
  if (o.checkCollision(player)){
    gameOver = true;
  }
 }
}

void keyPressed() {
  if (keyCode == UP){
    playerImage = keypressedImage;
    } else if (keyCode == DOWN) {
    playerImage = keypressedImage;
    } else if (keyCode == LEFT) {
    playerImage = keypressedImage;
    } else if (keyCode == RIGHT) {
    playerImage = keypressedImage;
    }
}
