//Global Variables
float mouthX1, mouthY1, mouthX2, mouthY2;
float MX, MY, MWidth, MHeight;
//
void mouthDraw() 
{
  //Mouth
  //rect(MX, MY, MWidth, MHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
}//End mouthDraw
