//Global Variables
float hatX1, hatY1, hatX2, hatY2;
float hatX, hatY, hatWidth, hatHeight;
float rectXHat, rectYHat, rectWidthHat, rectHeightHat;
PImage hat;
int hatintWidth = 3000; 
int hatintHeight = 2075;
int largerHatDimension, smallerHatDimension;
float hatWidthRatio=0.0, hatHeightRatio=0.0;
Boolean widthHatLarger=false, heightHatLarger=false;
float hatWidthAdjusted, hatHeightAdjusted;
color hatColor;
//
void hat() 
{
  if ( hatintWidth >= hatintHeight ) { //ID Larger Dimension: Landscape and Square
    largerHatDimension = hatintWidth;
    smallerHatDimension = hatintHeight;
    widthHatLarger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerHatDimension = hatintHeight;
    smallerHatDimension = hatintWidth;
    heightHatLarger = true;
  } //End pic1 larger dimension
  //
  println(smallerHatDimension, largerHatDimension);
  //
  if ( widthHatLarger == true ) hatWidthRatio = float (largerHatDimension) / float (largerHatDimension);
  if ( widthHatLarger == true ) hatHeightRatio = float (smallerHatDimension) / float (largerHatDimension);
  if ( heightHatLarger == true ) hatWidthRatio = float (smallerHatDimension) / float (largerHatDimension);
  if ( heightHatLarger == true ) hatHeightRatio = float (largerHatDimension) / float (largerHatDimension);
  println(hatWidthRatio, hatHeightRatio);
  //
  rectXHat = hatX; 
  rectYHat = hatY; 
  rectWidthHat = hatWidth; 
  rectHeightHat = hatHeight;
  /*
  rectXHat = rectFaceX; 
  rectYHat = rectFaceY; 
  rectWidthHat = rectFaceWidth; 
  rectHeightHat = rectFaceHeight*1/4;
  */
  //
  hatWidthAdjusted = rectWidthHat * hatWidthRatio;
  hatHeightAdjusted = rectHeightHat * hatHeightRatio;
  println(hatintWidth, hatintHeight);
  println (hatWidthAdjusted, hatHeightAdjusted);
  //
  image(hat, rectXHat, rectYHat, hatWidthAdjusted, hatHeightAdjusted);
}//End hat
