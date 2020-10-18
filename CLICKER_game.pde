import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




//WILLIAM TEES-DEBEYER
//BLOCK 1-2A
//OCT 14th 2020


//images
PImage troll;
boolean TrollOn;

PImage doge;
boolean DogeOn;

PImage lol;
boolean LOLOn;


// MODE VARIABLES
int mode; 
int INTRO = 0;
int GAME = 1;
int PAUSE = 2;
int GAMEOVER = 3;
int OPTIONS = 4;


//TARGET VARIABLES
float x, y, d, sliderY;
float vx, vy;
int score, lives, highscore;

//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover, grunt;

//COLOR PALLETTE
color maroon   = #AA1313;
color green = #1CAD26;
color  purple =  #AA90B7;
color grey = #566881;
color black = #000000;
color white = #F5F5F5;



void setup() {
  troll = loadImage("Troll.png");
  lol = loadImage("Lol.png");
  doge = loadImage("Doge.png");


  size(900, 900);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  TrollOn = true;
  LOLOn = false;
  DogeOn = false;

  //target initialization
  x = width/2;
  y = height/2;
  d = 100;

  score = 0;
  lives = 3;
  highscore = 0;

  sliderY = 620;

  vx = random(-5, 5);
  vy = random(-5, 5);

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  grunt = minim.loadFile("grunt.mp3");
}

void draw() {
  if  (mode == PAUSE) {
     theme.pause(); 
  } else {
     theme.play(); 
  }
  if (mode == INTRO) {

    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}  
