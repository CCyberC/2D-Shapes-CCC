//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float rectLEX, rectLEY, rectLEWidth, rectLEHeight;
float rectREX, rectREY, rectREWidth, rectREHeight;
float NX, NY, NWidth, NHeight;
float MX, MY, MWidth, MHeight;
float faceX, faceY, faceDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
void setup() 
{
  //Display Geometry
  fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
  //Landscape, not square or portrait
  int appWidth = displayWidth, appHeight = displayHeight;
  println(width, height, displayWidth, displayHeight); //Verification of values
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
  //Computer Tells us the orientation, important for Cell Phone Orientaation
  //-tell user specific orientation
  //if (appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation", instruct="Bro, turn your phone";
  String orientation = (appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  //String orientation = (appWidth >= appHeight ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation);
  //println("Display Orientation:", orientation); //Verify variables
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  //if ( orientation=="Portrait" ) println("Turn your phone");
  //Empty IF
  /*
  if ( orientation=="Landscape or Square" ) {
   //Empty IF
   } else { 
   println("Turn your phone"); //FUN
   */
  population();
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
//
void draw() {
  //Left Eye
  //rect(rectLEX, rectLEY, rectLEWidth, rectLEHeight);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rectREX, rectREY, rectREWidth, rectREHeight);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(NX, NY, NWidth, NHeight);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  //rect(MX, MY, MWidth, MHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //Measle
  float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of mesle size: small=1/100, large=*1/25(4 times bigger)
  float measleRadius = measleDiameter*1/2;
  float measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ));
  float measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius));
  /*float RMX, RMY, RMWidth, RMHeight;
  RMWidth = measleDiameter;
   RMHeight = measleDiameter;
   RMX = measleX-measleDiameter*1/2;
   RMY = measleY-measleDiameter*1/2;
   rect(RMX, RMY, MeWidth, MeHeight);
   */
  println ( measleRadius );
  Boolean nightMode=false; //Note: IF-ELSE similar to ternary operator
  //color red=#CE3636, measleColour=red, blackReset=#000000; //Note: need range here too
  color measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(0, 120)) : color(255, random(0, 50), random(0, 0)) ; //ternary operator for day:night
  color whiteReset=#FFFFFF; //Note: need range here too
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
}//End setup
//
void keyPressed() {
}//End setup
//
void mousePressed() {
}//End setup
