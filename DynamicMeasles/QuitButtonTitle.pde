//Global Variables
String title = "Exit";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color purple=#A18AE0, resetDefaultInk=#FFFFFF;
//
void quitButtonTitle() 
{
  //Drawing Text
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 50); //Change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
  rect(titleX, titleY, titleWidth, titleHeight); 
}//End quitButtonTitle
