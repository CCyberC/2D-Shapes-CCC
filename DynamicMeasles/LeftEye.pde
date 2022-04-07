//Global Variables
float leftEyeX, leftEyeY;
float rectLEX, rectLEY, rectLEWidth, rectLEHeight;
//
void leftEyeDraw() 
{
  //Left Eye
  /*
  rectLEX = leftEyeX*6.1/8;
  rectLEY = leftEyeY*1/2;
  rectLEWidth = eyeDiameter;
  rectLEHeight = eyeDiameter;
  */
  //rect(rectLEX, rectLEY, rectLEWidth, rectLEHeight);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
}//End leftEyeDraw
