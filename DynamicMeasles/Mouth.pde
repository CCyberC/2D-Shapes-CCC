//Global Variables
float mouthX1, mouthY1, mouthX2, mouthY2;
float MX, MY, MWidth, MHeight;
float rectXLips, rectYLips, rectWidthLips, rectHeightLips;
PImage lips;
int ;
int ;
int ;
int ;
//
void mouthDraw() 
{
  //Mouth
  //MX = rectLEX;
  MY = mouthY1*1/1.2;
  //MWidth = mouthX1*10.66/8;
  MHeight = mouthOpen;
  //rect(MX, MY, MWidth, MHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  
}//End mouthDraw
