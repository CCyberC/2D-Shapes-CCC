//Global Variables
String title = "Wahoo!";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color purple=#A18AE0, resetDefaultInk=#FFFFFF;
//
void setup() 
{
  //Population
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/10; //Rect ends at 4/5's of width
  titleHeight = height*1/10; //Rect ends at 2/10's of height
  //
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Jokerman", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do Not Press "OK" - known bug
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight); //rect(titleX, titleY, titleWidth, titleHeight)
}//End setup
//
void draw() 
{
  //Drawing Text
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 120); //Change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
