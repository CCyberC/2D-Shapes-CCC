//Global Variables
float measleDiameter, measleRadius, measleX, measleY;
float RMX, RMY, RMWidth, RMHeight;
color measleColour;
void measleDraw() 
{
  //Measle
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of mesle size: small=1/100, large=*1/25(4 times bigger)
  measleRadius = measleDiameter*1/2;
  measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ));
  measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius));
  /*float RMX, RMY, RMWidth, RMHeight;
   RMWidth = measleDiameter;
   RMHeight = measleDiameter;
   RMX = measleX-measleDiameter*1/2;
   RMY = measleY-measleDiameter*1/2;
   rect(RMX, RMY, MeWidth, MeHeight);
   */
  println ( measleRadius );
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  //color red=#CE3636, measleColour=red, blackReset=#000000; //Note: need range here too
  measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(0, 120)) : color(255, random(0, 50), random(0, 0)) ; //ternary operator for day:night
  whiteReset=#FFFFFF; //Note: need range here too
  //color measleColour = ( nightMode==false ) ? day : night ; //ternary operator for day:night
  //color measleColour = () ? : ; //this is a ternary operator
  //
  //rect();
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour
}//End measleDraw
