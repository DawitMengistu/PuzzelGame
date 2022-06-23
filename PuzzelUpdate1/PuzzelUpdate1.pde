int n=3;

getIndex GetIndex;
rects Rects;
OnkeyPress onKey;
reset Reset;
levels Levels;
PImage  img;
float rW, rH;

int moveCounter;

int done, won;

float transparent=255, bgTransparent;


int rectLastX, rectLastY;

int indexX, indexY;
int startIndexX, startIndexY;
int prIndexX, prIndexY;
int[][] numbers = new int[n][n];
int[][] numbers2 = new int[n][n];
IntList source = new IntList();
int counter=0;
float splashScreen, splashScreenEnd, splashScreenTransparent, out;
void setup() {
  GetIndex = new getIndex();
  Rects = new rects();
  onKey = new OnkeyPress();
  Reset = new reset();
  Levels = new levels();
  img = loadImage("data/SIA.png");
  size(300, 300);
  //set.surfaceLocation(displayWidth/2 , 0);

  Reset.onSetUp();
}

void draw() {
  if (won==1) {
    splashScreen=1;
    won=-1;
  }
  if (splashScreen==1) {
    if (splashScreenTransparent<200 && out==0) {
      splashScreenTransparent+=1;
    } else {
      splashScreenEnd=1;
      out=1;
    }
    noStroke();
    fill(255, splashScreenTransparent);
    rect(0, 0, width, height);
   // println(splashScreenTransparent);
    textAlign(CENTER);
    fill(0, splashScreenTransparent);
    textSize(30);
    text(moveCounter + " moves", width/2, height/2);
  }
  if (splashScreenEnd==1) {
    Levels.LEVELS();
  }
}

void keyPressed() {
  onKey.onKeyPress();
}
