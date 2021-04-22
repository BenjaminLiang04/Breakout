//Intro Tab

void intro() {//              Beginning of intro
  background(0);
  gameover.pause();
  theme.play();
  
  //Gif
  image(gif[f], 0, 0, width, height);
  f = f +1;
  if (f == frames) f = 0;
  
  //Title
  fill(lightblue);
  textSize(120);
  textFont(fontg);
  text("BREAKOUT!",400,250);
  fill(darkblue);
  textSize(40);
  text("Click to Start",400,350);
 
 
}//                           End of intro




void introClicks() {//        Beginning of introClicks
 
  mode = GAME;

}//                           End of introClicks
