//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float rectLEX, rectLEY, rectLEWidth, rectLEHeight;
float rectREX, rectREY, rectREWidth, rectREHeight;
float NX, NY, NWidth, NHeight;
float MX, MY, MWidth, MHeight;
float faceX, faceY, faceDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
void setup() 
{
  fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
  //Display Geometry
  //Landscape, not square or portrait
  int appWidth = displayWidth, appHeight = displayHeight;
  println(width, height, displayWidth, displayHeight); //Verification of values
  println(appWidth, appHeight); //Canvas Flexibility
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
