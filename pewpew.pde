//Game objects
ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color red    = #FF0D0D;
color blue   = #0E26EA;
//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int OPTIONS  = 4;
int mode = INTRO;
int score=0;
//color colorcurrent=#000000;
PImage pause;
//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);
  pause=loadImage("pause.png");
  noStroke();
  
  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;
  
  //Game Object initialization
  objects= new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  int i=0;
  while (i<50){
  objects.add(new Obstacle());
  i++;
  }
  
  
  
}

//##################################### DRAW ################################################

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else if (mode == OPTIONS)  options();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
