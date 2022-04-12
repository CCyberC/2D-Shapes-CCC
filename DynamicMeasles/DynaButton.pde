//Global Variables
int appWidth, appHeight;
color whiteReset=#FFFFFF;
//
void setup() 
{
  fullScreen(); // teacher is using size (400, 300);
  displayButtonOrientation();
  buttonPopulation();
}//End setup
//
void draw() 
{
  quitButtonDraw();
}//End draw
//
void keyPressed() 
{
  quitButtonkeyPressed();
}//End keyPressed
//
void mousePressed() 
{
  quitButtonmousePressed();
}//End mousePressed
