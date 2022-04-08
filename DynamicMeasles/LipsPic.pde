//Global Variables
float rectXLips, rectYLips, rectWidthLips, rectHeightLips;
PImage lips;
int lipsWidth = 3000;
int lipsHeight = 2075;
int largerLipsDimension, smallerLipsDimension;
float lipsWidthRatioPic1=0.0, lipsHeightRatioPic1=0.0;
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
  image(lips, rectXLips, rectYLips, lipsWidthAdjusted, lipsHeightAdjusted);
}//End mouthDraw
