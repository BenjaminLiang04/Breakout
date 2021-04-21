//Utilities Tab

void manageBrick(int i) {//                  Beginning of manageBrick
   if (y[i] == 100) fill(lightblue);
  if (y[i] == 200) fill(darkblue);
  if (y[i] == 300) fill(pink);
  if (y[i] == 400) fill(yellow);
  circle(x[i], y[i], brickD);
  if (dist(ballX, ballY, x[i], y[i]) < ballR +  brickD/2) {
      vx = (ballX - x[i])/3;
      vy = (ballY - y[i])/3;
      alive[i] = false;
      score = score + 1;
    }
}//                                     End of manageBrick

void reset() {//                        Beginning of reset
  //Score
  lives = 3;
  score = 0;
  timer = 100;
  
  //Ball
  ballX = width/2;
  ballY = 500;
  
  //Paddles
  circleX = width/2;
  circleY = height;
  
  //Bricks  
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  brickD = 30;
  tempx = 60;
  tempy = 100;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 75;
    if (tempx >= width) {
      tempy = tempy + 100;
      tempx = 60;
    }
    i=i+1;
  }
  
}//                                     End of reset
