//Global Variables
float rightEyeX, rightEyeY;
float rectREX, rectREY, rectREWidth, rectREHeight;
//
void rightEyeDraw() 
{
  //Right Eye
  /*
  rectREX = rightEyeX*6.97/8;
  rectREY = rightEyeY*1/2;
  rectREWidth = eyeDiameter;
  rectREHeight = eyeDiameter;
  */
  //rect(rectREX, rectREY, rectREWidth, rectREHeight);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
}//End rightEyeDraw
