//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color red=#B43C00, blue=#E0F6FC, buttonColour; //Notice nightMode Blue Values
String title = "Exit";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color purple=#A18AE0, resetDefaultInk=#FFFFFF;
//
void quitButtonSetupPopulation(int centerX, int centerY) 
{
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/5;
  quitButtonHeight = appHeight*1/7;
}//End quitButtonSetup
//
void quitButtonDraw() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = red;
  } else {
    buttonColour = blue;
  }//End Hover-Over Effect
  //Verifying of mouse on the button/Alternate Verification that mouseX&Y is on the button
  println("X-Value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "/t/t Look at the middle value");
  println("Y-Value", quitButtonY, mouseY, quitButtonX+quitButtonHeight, "/t/t Look at the middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(whiteReset);
  //
  quitButtonTitle();
}//End quitButtonDraw
//
void quitButtonkeyPressed() 
{
  ///*
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit();//KeyBoard is separated on key-Variables: key & keyCode
  //
  //*/
}//End quitButtonkeyPressed
//
void quitButtonmousePressed() 
{
  if (  mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End quitButtonmousePressed
//
void quitButtonTitle() 
{
  //rect(titleX, titleY, titleWidth, titleHeight); 
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 125); //Change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End quitButtonTitle
