//Global Variables
int appWidth, appHeight;
int reset, smallerDisplayDimension, mouthOpen;
color whiteReset;
Boolean nightMode=false;
//
float eyeDiameter;
float iDiameter;
float pDiameter;
float faceX, faceY, faceDiameter;
//
color iris;
color pupil;
//
void setup() 
{
  fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
  //backyground();
  displaySetup();
  population();
  faceSetup();
  displayButtonOrientation();
  hat();
}//End setup
//
void draw() 
{ 
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
  measleDraw();
  quitButtonDraw();
}//End setup
//
void keyPressed() 
{
  quitButtonkeyPressed();
}//End setup
//
void mousePressed() 
{
  quitButtonmousePressed();
}//End setup
