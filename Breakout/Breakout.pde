//Breakout Project
//Benjamin Liang 1-4(B)
//Programming 11
//April 19th, 2021

//Fonts
PFont fontg;

//Mode Framework
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

//Colour Pallette
color blue          = #08F7FE;
color lightblue     = #09FBD3;
color pink          = #FE53BB;
color yellow        = #F5D300;
color darkblue      = #0310EA;

//Keyboard Variables
boolean akey, dkey;


void setup(){//                        Beginning of Setup
  size(800,800);
  mode = INTRO;
  
  //Text
  textAlign(CENTER,CENTER);
  fontg = createFont("Hexadecimal.otf",150);
  
  
}//                                    End of Setup


void draw(){//                         Beginning of Draw
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error:" + mode);
  }
  
  
}//                                    End of Draw
