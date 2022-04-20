//Global Variables
float rightEyeX, rightEyeY;
float rectREX, rectREY, rectREWidth, rectREHeight;
float irightEyeX, irightEyeY;
float prightEyeX, prightEyeY;
//
void rightEyeDraw() 
{
  //Right Eye
  rectREX = rightEyeX*6.97/8;
  /*
  rectREY = rightEyeY*1/2;
  rectREWidth = eyeDiameter;
  rectREHeight = eyeDiameter;
  */
  //rect(rectREX, rectREY, rectREWidth, rectREHeight);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  noStroke();
  fill(iris);
  ellipse(irightEyeX, irightEyeY, iDiameter, iDiameter);
  stroke(reset);
  fill(whiteReset);
  //
  noStroke();
  fill(pupil);
  ellipse(prightEyeX, prightEyeY, pDiameter, pDiameter);
  stroke(reset);
  fill(whiteReset);
  //
}//End rightEyeDraw
