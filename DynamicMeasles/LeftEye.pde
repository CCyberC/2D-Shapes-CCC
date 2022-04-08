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
  noStroke();
  fill(iris);
  ellipse(ileftEyeX, ileftEyeY, iDiameter, iDiameter);
  stroke(reset);
  fill(whiteReset);
  //
  noStroke();
  fill(pupil);
  ellipse(pleftEyeX, pleftEyeY, pDiameter, pDiameter);
  stroke(reset);
  fill(whiteReset);
  //
}//End leftEyeDraw
