//Global Variables
float eyeDiameter;
int reset, smallerDisplayDimension, mouthOpen;
//
void setup() 
{
  fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
  displaySetup();
  population();
  faceSetup();
}//End setup
//
void draw() { 
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
  measleDraw();
}//End setup
//
void keyPressed() {
}//End setup
//
void mousePressed() {
}//End setup
