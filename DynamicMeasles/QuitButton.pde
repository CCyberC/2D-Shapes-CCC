//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color red=#B43C00, blue=#E0F6FC, buttonColour; //Notice nightMode Blue Values
//
void quitButtonSetupPopulation(int centerX, int centerY) 
{
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
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
