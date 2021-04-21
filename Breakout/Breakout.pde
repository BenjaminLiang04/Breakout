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

//Brick Variables
int [] x;    //Array of x Coordinates
int [] y;    //Array of y Coordinates
boolean[] alive;
int n;      //Number of Elements
int brickD; //Diameter of Bricks
int tempx, tempy;

//Colour Pallette
color blue          = #08F7FE;
color lightblue     = #09FBD3;
color pink          = #FE53BB;
color yellow        = #F5D300;
color darkblue      = #0310EA;

//Keyboard Variables
boolean leftKey, rightKey;

//Entity Variables
int circleX, circleD, circleY; //Paddle
int ballX, ballY, ballD; //Ball
float Dcircle, ballR, circleR; //Collisions
int vx, vy; //Velocity

//Score Variables
int score = 0;
int lives = 3;
int timer = 100; //Timer

void setup(){//                        Beginning of Setup
  size(800,800);
  mode = INTRO;
  
  //Brick Array Setup
  n = 40;
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
  
  //Text
  textAlign(CENTER,CENTER);
  fontg = createFont("Hexadecimal.otf",120);
  
  //Initialize Paddles
  circleX = width/2;
  circleY = height;
  circleD = 150;
  
  //Initialize Ball
  ballX = width/2;
  ballY = 500;
  ballD = 10;
  vy = 7;
  vx = 0;
  
  //Initialize Keyboard
  leftKey = rightKey = false;
  
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
