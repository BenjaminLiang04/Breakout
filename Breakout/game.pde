//Game Tab

void game() {//                Beginning of game
  background(0);
  timer = timer - 1;
  
  //Bricks Loop
//  int i = 0;
 // while (i < n) {
  //  circle(x[i], y[i], brickD);
 //   if (dist(ballX, ballY, x[i], y[i] < ballR +  brickD/2)) {
 //     vx = (ballX - x[i])/15;
 //     vy = (ballY - x[i])/15;
//    }
//    i++;
//  }
  
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
  
  //Ball Reset
  if (ballY > height) {
   ballX = width/2;
   ballY = 500;
   vy = 7;
   vx = 0;
   timer = 100;
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
  if (ballX < 15) {
    ballX = 15;
  }
  if (ballX > 785) {
    ballX = 785;
  }
  if (ballY < 15) {
    ballY = 15;
  }
  
  //Collisions
  Dcircle = dist(circleX,circleY,ballX,ballY);
  ballR = ballD/2;
  circleR = circleD/2;
  
  if (Dcircle <= ballR + circleR) {
    vx = (ballX - circleX)/15;
    vy = (ballY - circleY)/15;
  }
    
  
}//                            End of game

void gameClicks() {//          Beginning of gameClicks

  mode = PAUSE;

}//                            End of gameClicks
