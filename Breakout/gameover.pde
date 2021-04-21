//Gameover Tab

void gameover() {//            Beginning of gameover
  background (0);
  
  if (score >= n) {
    fill(pink);
    textSize(100);
    text("YOU WIN!",400,300);
    fill(lightblue);
    textSize(50);
    text("Click to Return to Start",400,500);
  }
  else if (lives <= 0) {
    fill(lightblue);
    textSize(100);
    text("YOU LOSE!",400,300);
    fill(pink);
    textSize(50);
    text("Click to Try Again",400,500);
  }
  
}//                            End of gameoverClicks

void gameoverClicks() {//      Beginning of gameoverClicks
  mode = INTRO;
  reset();
  
}//                            End of gameoverClicks
