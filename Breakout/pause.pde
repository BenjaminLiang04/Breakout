//Pause Tab

void pause() {//            Beginning of pause
  fill(pink);
  textSize(150);
  text("PAUSED",400,300);
  fill(blue);
  textSize(50);
  text("Click to Resume",400,500);
  theme.pause();
  
}//                         End of pause

void pauseClicks() {//      Beginning of pause

  mode = GAME;
  theme.play();
  
}//                         End of pause
