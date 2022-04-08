//Global Variables
float leftEyeX, leftEyeY;
float rectLEX, rectLEY, rectLEWidth, rectLEHeight;
float ileftEyeX, ileftEyeY;
float pleftEyeX, pleftEyeY;
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
  ellipse(ileftEyeX, ileftEyeY, iDiameter, iDiameter);
  iris = color(214, 143, 0);
  fill(iris);
  //
  ellipse(pleftEyeX, pleftEyeY, pDiameter, pDiameter);
  //
}//End leftEyeDraw
