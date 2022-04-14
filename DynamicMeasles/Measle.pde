//Global Variables
float measleDiameter, measleRadius, measleX, measleY, measleX2, measleY2, measleX3, measleY3, measleX4, measleY4, measleX5, measleY5, measleX6, measleY6, measleX7, measleY7, measleX8, measleY8;
float RMX, RMY, RMWidth, RMHeight;
color measleColour;
void measleDraw() 
{
  //Measle
  //ellipse(measleX, measleY, measleDiameter, measleDiameter);
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of mesle size: small=1/100, large=*1/25(4 times bigger)
  measleRadius = measleDiameter*1/2;
  //measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ));
  //measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius));
  measleX2 = random( rectLEX+measleRadius, (rightEyeX+eyeDiameter*1/2)-measleRadius);
  measleY2 = random( rectLEY+measleRadius, MY+MHeight*1/2 );
  measleX3 = random( (rectFaceX+measleRadius)+measleRadius*2, ((( rectFaceX+rectFaceWidth ) - measleRadius ))-measleRadius*2);
  measleY3 = random( (rectLEY+rectLEHeight)+measleRadius, MY-measleRadius);
  measleX4 = random(( rectFaceX+(rectFaceWidth*1/16) )+measleRadius, (( rectFaceX+(rectFaceWidth*15/16) ) - measleRadius ));
  measleY4 = random( pleftEyeY+measleRadius, (( MY+MHeight*1/2 ) - measleRadius));
  measleX5 = random( rectLEX+measleRadius, (rightEyeX+eyeDiameter*1/2)-measleRadius);
  measleY5 = random( MY, (( rectFaceHeight*14/16 ) - measleRadius));
  measleX6 = random( (pleftEyeX-(eyeDiameter*1/8)) + measleRadius, (prightEyeX+(eyeDiameter*1/8)) - measleRadius );
  measleY6 = random( mouthY2, (( rectFaceHeight*15/16 ) - measleRadius) );
  measleX7 = random( (leftEyeX+(eyeDiameter*1/2))+(measleRadius*2), (rightEyeX-(eyeDiameter*1/2)) - (measleRadius*2) );
  measleY7 = random( (leftEyeY - measleRadius), rectFaceHeight - (measleRadius*3/2) );
  measleX8 = random( (rectLEX+(eyeDiameter*1/8))+(measleRadius*2), ((rectREX+eyeDiameter)-(eyeDiameter*1/8))-(measleRadius*2));
  measleY8 = random( leftEyeY-(eyeDiameter*1/4), (( rectFaceHeight*14/16 ) - measleRadius) );
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
  //ellipse( measleX, measleY, measleDiameter, measleDiameter );
  ellipse( measleX2, measleY2, measleDiameter, measleDiameter );
  ellipse( measleX3, measleY3, measleDiameter, measleDiameter );
  ellipse( measleX4, measleY4, measleDiameter, measleDiameter );
  ellipse( measleX5, measleY5, measleDiameter, measleDiameter );
  ellipse( measleX6, measleY6, measleDiameter, measleDiameter );
  ellipse( measleX7, measleY7, measleDiameter, measleDiameter );
  ellipse( measleX8, measleY8, measleDiameter, measleDiameter );
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour
}//End measleDraw
