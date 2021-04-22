//Game Tab

void game() {//                Beginning of game
  background(0);
  
  //Bricks Loop
  int i = 0;
  noStroke();
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }
  
  //Score
  fill(blue);
  textSize(30);  
  text("Lives:",100,700);
  text(lives,150,700);
  fill(pink);
  textSize(30);
  text("Score:",650,700);
  text(score,720,700);
  
    timer = timer - 1;
    if (score >= n){
      mode = GAMEOVER;
    }
    if (lives <= 0){
      mode = GAMEOVER;
    }
  
  //Paddle
  fill(255);
  circle(circleX,circleY,circleD);
  
  //Ball
  stroke(255);
  fill(255);
  circle(ballX, ballY, ballD);
  
  //Move Ball
  if (timer <= 0) {
    ballY = ballY + vy;
    ballX = ballX + vx;
  }
  if (vy == 0) {
    vy = vy + 1;
  }
  
  //Ball Reset
  if (ballY > height) {
   ballX = width/2;
   ballY = 500;
   lives = lives -1;
   vy = 7;
   vx = 0;
   timer = 100;
   bump.rewind();
   bump.play();
  }
  
  //Move Paddle
  if (leftKey == true) {
    circleX = circleX - 7;
  }
  if (rightKey == true) {
    circleX = circleX + 7;
  }
  
  //Paddle Restrictions
  if (circleX >= 725) circleX = 725;
  if (circleX <= 75) circleX = 75;
  
  //Ball Restrictions
   if (ballX < ballR || ballX > width-ballR) {
    vx = vx * -1;
  }
  if (ballY < ballR) {
    vy = vy * -1;
  }
  if (ballX < 5) {
    ballX = 5;
  }
  if (ballX > 795) {
    ballX = 795;
  }
  if (ballY < 5) {
    ballY = 5;
  }
  
  //Collisions
  Dcircle = dist(circleX,circleY,ballX,ballY);
  ballR = ballD/2;
  circleR = circleD/2;
  
  if (Dcircle <= ballR + circleR) {
    vx = (ballX - circleX)/10;
    vy = (ballY - circleY)/10;
    bump.rewind();
    bump.play();
  }
    
  
}//                            End of game

void gameClicks() {//          Beginning of gameClicks

  mode = PAUSE;

}//                            End of gameClicks
