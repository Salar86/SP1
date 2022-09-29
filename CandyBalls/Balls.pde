class Balls {
  float ballXpos, ballYpos, ballDiameter, ballSpeed;
  color ballColor;

  Balls(float tempBallYpos, float tempBallDiameter, float tempBallSpeed) {
    ballDiameter = tempBallDiameter;
    ballXpos = random(width); //so the balls appear randomly on the x-axis
    ballYpos = tempBallYpos;
    ballSpeed = tempBallSpeed;
    ballColor = color(random(0, 255), random(0, 255), random(0, 255)); 
  }
  void falling() {
    ballYpos += ballSpeed;
  }
  void rising() {
    ballYpos -= ballSpeed;
  }
  void display() {
    fill(ballColor);
    ellipse(ballXpos, ballYpos+ballDiameter*4, ballDiameter, ballDiameter);
  }
  boolean ballsTouching(Balls b) {
    float distance = dist(ballXpos, ballYpos, b.ballXpos, b.ballYpos);
    if (distance < (ballDiameter/2)+(b.ballDiameter/2)) {
      println("Your balls are touching");
      return true;
    } else {

      return false;
    }
  }
}
