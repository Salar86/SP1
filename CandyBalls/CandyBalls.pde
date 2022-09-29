Balls[] balls;
Balls[] balls2;
int totalBalls = 0;
void setup(){
  size(800,800);
  balls = new Balls[500];
  balls2 = new Balls[500];
}
void draw(){
  background(0);
  balls[totalBalls] = new Balls(-40, random(10,20),3);
  balls2[totalBalls] = new Balls(840, random(10,20),3);
  totalBalls++; //set to increase so that every spot in our array has a Ball object in it
  if(totalBalls >= balls.length && totalBalls >= balls2.length){
    totalBalls = 0; // Set to reset when it reaches end of array
  }
  for (int i = 0; i < totalBalls; i++){
    balls[i].falling();
    balls[i].display();
    balls[i].ballsTouching(balls2[i]);
    
    
  }
  for (int i = 0; i < totalBalls; i++){
    balls2[i].rising();
    balls2[i].display();
    balls2[i].ballsTouching(balls[i]);
  }
}
