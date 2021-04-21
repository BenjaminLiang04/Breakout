//Intro Tab

void intro() {//              Beginning of intro
  background(0);
  
  //Intro Design/Patterns
  strokeWeight(10);
  stroke(darkblue,175);
  line(0,0,800,800);

  
  //Title
  fill(lightblue);
  textSize(120);
  textFont(fontg);
  text("BREAKOUT!",400,250);
  fill(pink);
  textSize(40);
  text("Click to Start",400,350);
 
}//                           End of intro




void introClicks() {//        Beginning of introClicks
 
  mode = GAME;

}//                           End of introClicks
