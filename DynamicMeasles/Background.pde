//Global Variables
float rectXBack, rectYBack, rectWidthBack, rectHeightBack;
PImage backyground;
int backWidth = 1920;
int backHeight = 1080;
int largerBackDimension, smallerBackDimension;
float backWidthRatio=0.0, backHeightRatio=0.0;
Boolean widthBackLarger=false, heightBackLarger=false;
float backWidthAdjusted, backHeightAdjusted;
//
void backyground() 
{
  if ( backWidth >= backHeight ) { //ID Larger Dimension: Landscape and Square
    largerBackDimension = backWidth;
    smallerBackDimension = backHeight;
    widthBackLarger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerBackDimension = backHeight;
    smallerBackDimension = backWidth;
    heightBackLarger = true;
  } //End pic1 larger dimension
  //
  println(smallerBackDimension, largerBackDimension);
  //
  if ( widthBackLarger == true ) backWidthRatio = float (largerBackDimension) / float (largerBackDimension);
  if ( widthBackLarger == true ) backHeightRatio = float (smallerBackDimension) / float (largerBackDimension);
  if ( heightBackLarger == true ) backWidthRatio = float (smallerBackDimension) / float (largerBackDimension);
  if ( heightBackLarger == true ) backHeightRatio = float (largerBackDimension) / float (largerBackDimension);
  println(backWidthRatio, backHeightRatio);
  //
  /*
  rectXBack = displayWidth*1/4; 
  rectYBack = displayHeight*0; 
  rectWidthBack = displayWidth*1/2; 
  rectHeightBack = displayHeight*1/2;
  */
  rectXBack = rectFaceX; 
  rectYBack = rectFaceY; 
  rectWidthBack = rectFaceWidth; 
  rectHeightBack = rectFaceHeight;
  //
  backWidthAdjusted = rectWidthBack * backWidthRatio;
  backHeightAdjusted = rectHeightBack * backHeightRatio;
  println(backWidth, backHeight);
  println (backWidthAdjusted, backHeightAdjusted);
  //
  image(backyground, rectXBack, rectYBack, backWidthAdjusted, backHeightAdjusted);
}//End mouthDraw
