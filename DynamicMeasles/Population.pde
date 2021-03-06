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
  ileftEyeX = appWidth*2.8/8;
  irightEyeX = appWidth*5.2/8;
  ileftEyeY = appHeight*1/4;  
  irightEyeY = leftEyeY;
  pleftEyeX = appWidth*2.8/8;
  prightEyeX = appWidth*5.2/8;
  pleftEyeY = appHeight*1/4;  
  prightEyeY = leftEyeY;
  iDiameter = eyeDiameter*1/2;
  pDiameter = eyeDiameter*1/3;
  iris=#D68F00;
  pupil=#000000;
  hatColor=#ED7300;
  whiteReset=#FFFFFF;
  lips = loadImage("5b135831a2c9179fd8d44131a4dd7e28.png");
  rectXLips = MX; 
  rectYLips = MY;
  rectWidthLips = MWidth;
  rectHeightLips = MHeight;
  hat = loadImage("476-4764599_baseball-cap-png-image-background-baseball-cap-transparent.png");
  rectXHat = rectFaceX; 
  rectYHat = rectFaceY; 
  rectWidthHat = rectFaceWidth; 
  rectHeightHat = rectFaceHeight*1/4;
  hatX1 = rectXHat; 
  hatY1 = rectYHat; 
  hatX2 = rectWidthHat+rectXHat; 
  hatY2 = appHeight;
  //QuitButton
  quitButtonSetupPopulation(); 
  //QuitButtonTitle
  /*
  titleX = displayWidth*1/5;
  titleY = displayHeight*1/10;
  titleWidth = displayWidth*3/10; //Rect ends at 4/5's of width
  titleHeight = displayHeight*1/10; //Rect ends at 2/10's of height
  */
  titleX = quitButtonX;
  titleY = quitButtonY;
  titleWidth = quitButtonWidth;
  titleHeight = displayHeight*1/10;
  titleFont = createFont("Cambria-Bold-48", 55);
  //
  TtitleX = displayWidth*11/16;
  TtitleY = displayHeight*1/40;
  TtitleWidth = displayWidth*3/10; 
  TtitleHeight = displayHeight*1/10; 
  TtitleFont = createFont("BookAntiqua-Italic-48", 55);
}//End population
