//Mouse Tab

void mouseReleased() {//          Beginning of mouseReleased
  if (mode == INTRO) {
      introClicks();
  } else if (mode == GAME) {
      gameClicks();
  } else if (mode == PAUSE) {
      pauseClicks();
  } else if (mode == GAMEOVER) {
      gameoverClicks();
  }

}//                               End of mouseReleased
