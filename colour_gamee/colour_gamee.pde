//Jennifer Tsai
//Sept 16, 2021
//Colour game 

//game description 
//The goal of the colour game is to get the highest score as possible by clicking match when the word and colour matches, or clicking unmatch when 
//word and colour don't match. There is only one live. If clicked the wrong button, it will go straight to gameover. There is also a time limit for 
//each choices. Within that time, a choice must be selected or else it will go to gameover. 

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;

//gifs
PImage [] gif;
int frame;
int f;

PImage [] gif2;
int frame2;
int f2;

//fonts
PFont komikax;
PFont trailer; 

//words
String [] words;

//colours
color[] colors;
color red = #FF4F2C;
color orange = #F59B0A;
color yellow = #FEFF2C; 
color green = #25F549; 
color blue = #25C9F5;
color purple = #F125F5; 

//choosing words and colours 
int w;
int c; 

//score and lives
int score;
int lives;
int highscore; 

//timer 
int timer;  

// 50, 50 chance for puzzle 
int p = int(random(0, 2));


void setup() {
  size(800, 800, FX2D);
  mode = INTRO;


  //load animated gif
  frame = 14; 
  gif = new PImage[frame]; //how many frames u hv 
  int g = 0;
  while (g < frame) {
    gif[g] = loadImage("rainbow_"+g+"_delay-0.12s.gif");
    g = g+1;
  }

  frame2 = 3;
  gif2 = new PImage[frame2];
  int j = 0;
  while (j < frame2) {
    gif2[j] = loadImage("frame_"+j+"_delay-0.1s.gif");
    j = j + 1;
  }

  //font
  komikax=createFont("KOMIKAX_.ttf", 80);
  trailer=createFont("Trailer Park Girl.otf", 110); 

  //words
  words = new String [6];
  colors = new color [6]; 

  words[0] = "red"; 
  colors[0] = red; 
  words[1] = "orange";
  colors[1] = orange;
  words[2] = "yellow";
  colors[2] = yellow;
  words[3] = "green";
  colors[3] = green;
  words[4] = "blue";
  colors[4] = blue;
  words[5] = "purple";
  colors[5]  = purple; 

  //score
  score = 0; 

  //lives
  lives = 1; 

  //puzzle and size  
  w = int(random(0, 6));
  c = int(random(0, 6)); 

  //timer 
  timer = 0;
}


void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error : " + mode);
  }
}
