void population() 
{
  //Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
  smallerDisplayDimension = appHeight; //ALWAYS in Landscape
  reset = smallerDisplayDimension / smallerDisplayDimension; //returns "1"
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimension*1/2); 
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimension; //Square Shape
  rectFaceHeight = smallerDisplayDimension; //Square Shape
  faceX = appWidth*1/2; 
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimension; 
  leftEyeX = appWidth*2.8/8;
  rightEyeX = appWidth*5.2/8;
  leftEyeY = appHeight*1/4;  
  rightEyeY = leftEyeY; //Best Practise: change one line of code
  eyeDiameter = smallerDisplayDimension*1/4;
  mouthX1 = leftEyeX; 
  mouthY1 = appHeight*3/4; 
  mouthX2 = rightEyeX; 
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimension*1/4;
  MX = rectLEX;
  MY = mouthY1*1/1.2;
  MWidth = mouthX1*10.66/8;
  MHeight = mouthOpen;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY;
  NX = xNose2;
  NY = yNose1;
  NWidth = leftEyeY;
  NHeight = faceY*1/2;
  //
}//End population
