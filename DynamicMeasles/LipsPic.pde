//Global Variables
float rectXLips, rectYLips, rectWidthLips, rectHeightLips;
PImage lips;
int lipsWidth = 3000;
int lipsHeight = 2075;
int largerLipsDimension, smallerLipsDimension;
float lipsWidthRatio=0.0, lipsHeightRatio=0.0;
Boolean widthLipsLarger=false, heightLipsLarger=false;
float lipsWidthAdjusted, lipsHeightAdjusted;
//
void lipsDraw() 
{
  if ( lipsWidth >= lipsHeight ) { //ID Larger Dimension: Landscape and Square
    largerLipsDimension = lipsWidth;
    smallerLipsDimension = lipsHeight;
    widthLipsLarger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerLipsDimension = lipsHeight;
    smallerLipsDimension = lipsWidth;
    heightLipsLarger = true;
  } //End pic1 larger dimension
  //
  println(smallerLipsDimension, largerLipsDimension);
  //
  if ( widthLipsLarger == true ) lipsWidthRatio = float (largerLipsDimension) / float (largerLipsDimension);
  if ( widthLipsLarger == true ) lipsHeightRatio = float (smallerLipsDimension) / float (largerLipsDimension);
  if ( heightLipsLarger == true ) lipsWidthRatio = float (smallerLipsDimension) / float (largerLipsDimension);
  if ( heightLipsLarger == true ) lipsHeightRatio = float (largerLipsDimension) / float (largerLipsDimension);
  println(lipsWidthRatio, lipsHeightRatio);
  //
  rectXLips = MX; 
  rectYLips = MY; 
  rectWidthLips = MWidth; 
  rectHeightLips = MHeight;
  /*
  rectXLips = displayWidth*1/4; 
  rectYLips = displayHeight*0; 
  rectWidthLips = displayWidth*1/2; 
  rectHeightLips = displayHeight*1/2;
  */
  //
  lipsWidthAdjusted = rectWidthLips * lipsWidthRatio;
  lipsHeightAdjusted = rectHeightLips * lipsHeightRatio;
  println(lipsWidth, lipsHeight);
  println (lipsWidthAdjusted, lipsHeightAdjusted);
  //
  image(lips, rectXLips, rectYLips, lipsWidthAdjusted, lipsHeightAdjusted);
}//End mouthDraw
